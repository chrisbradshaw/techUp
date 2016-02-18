class CreateUserConferences < ActiveRecord::Migration
  def change
    create_table :users_conferences do |t|
      t.belongs_to :user
      t.belongs_to :conference
      t.timestamps
    end
  end
end
