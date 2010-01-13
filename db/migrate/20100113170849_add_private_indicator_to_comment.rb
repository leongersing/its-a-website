class AddPrivateIndicatorToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :private, :bool
  end

  def self.down
    remove_column :comments, :private
  end
end
