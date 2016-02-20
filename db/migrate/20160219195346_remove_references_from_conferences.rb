class RemoveReferencesFromConferences < ActiveRecord::Migration
  def change
     remove_reference :conferences, :attendee
  end
end
