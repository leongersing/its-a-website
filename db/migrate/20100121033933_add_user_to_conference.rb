class AddUserToConference < ActiveRecord::Migration
  def self.up
    add_column :conferences, :user_id, :integer
  end

  def self.down
    remove_column :conferences, :user_id
  end
end
