class AddCreatorIdToConferences < ActiveRecord::Migration
    def change
    add_reference :conferences, :creator, index: true
  end
end
