class Player < ApplicationRecord
  after_create_commit { broadcast_prepend_to 'players' }
  after_update_commit { broadcast_replace_to 'players' }
  after_destroy_commit { broadcast_remove_to 'players' }
end
