class RemoveThumbsDownAttrOnRating < ActiveRecord::Migration
  def self.up
    remove_column :ratings, :thumbs_down
  end

  def self.down
    add_column :ratings, :thumbs_down, :integer, :default => 0
  end
end
