class AddIdsToUserConferences < ActiveRecord::Migration
  def change
    add_column :user_conferences, :attendee_id, :integer
    add_column :user_conferences, :attended_conference_id, :integer
  end
end
