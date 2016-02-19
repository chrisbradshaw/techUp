class AddLocationToConference < ActiveRecord::Migration
  def up
    add_column :conferences, :location, :string
  end

  def down
  end
end
