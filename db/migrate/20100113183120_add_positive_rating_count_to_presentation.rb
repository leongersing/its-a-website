class AddPositiveRatingCountToPresentation < ActiveRecord::Migration
  def self.up
    add_column :presentations, :positive_ratings, :integer, :default => 0
  end

  def self.down
    remove_column :presentations, :positive_ratings
  end
end
