class CreatePlayersDetail < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.json :runs

      t.timestamps
    end
  end
end
