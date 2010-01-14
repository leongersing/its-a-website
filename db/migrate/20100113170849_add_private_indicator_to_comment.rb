class AddPrivateIndicatorToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :private, :boolean
  end

  def self.down
    remove_column :comments, :private
  end
end
