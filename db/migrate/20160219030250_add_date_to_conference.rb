class AddDateToConference < ActiveRecord::Migration
  def change
    add_column :conferences, :date, :datetime
  end
end
