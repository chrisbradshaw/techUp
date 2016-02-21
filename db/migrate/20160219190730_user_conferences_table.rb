class UserConferencesTable < ActiveRecord::Migration
  def self.up
    rename_table :users_conferences, :user_conferences
  end 
  def self.down
    rename_table :user_conferences, :users_conferences
  end
end
