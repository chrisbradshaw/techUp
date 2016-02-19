class AddReferenceToConferences < ActiveRecord::Migration
  def change
    add_reference :conferences, :attendee, index: true
  end
end