class AddSpeakerHabtmForSessionAndUsers < ActiveRecord::Migration
  def self.up
    create_table :sessions_users, :id=>false do |t|
      t.integer :session_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :sessions_users
  end
end
