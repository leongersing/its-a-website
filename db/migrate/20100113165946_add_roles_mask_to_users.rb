class AddRolesMaskToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :roles_mask, :integer
    remove_column :users, :role
  end

  def self.down
    add_column :users, :role, :string
    remove_column :users, :roles_mask
  end
end
