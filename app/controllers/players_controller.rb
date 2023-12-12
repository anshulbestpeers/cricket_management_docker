class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    respond_to do |format|
      if @player.save
        format.turbo_stream do
        end
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@player, partial: "players/form", locals: { player: @player }), status: :unprocessable_entity }
      end
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])

    respond_to do |format|
      if @player.update(player_params)
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@player, partial: "players/form", locals: { player: @player }), status: :unprocessable_entity }
      end
    end
  end


   def destroy
    @player = Player.find(params[:id])
    respond_to do |format|
      if @player.destroy
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@player, partial: "players/form", locals: { player: @player }), status: :unprocessable_entity }
      end
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :runs)
  end
end
