class AddThumbsUpAndDownBooleansToRating < ActiveRecord::Migration
  def self.up
    add_column :ratings, :thumbs_up, :boolean, :default => false
    add_column :ratings, :thumbs_down, :boolean, :default => false
  end

  def self.down
    remove_column :ratings, :thumbs_up
    remove_column :ratings, :thumbs_down
  end
end
