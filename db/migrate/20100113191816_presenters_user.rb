class PresentersUser < ActiveRecord::Migration
  def self.up
    add_column :users, :presenter_id, :integer
  end

  def self.down
    drop_column :users, :presenter_id
  end
end
