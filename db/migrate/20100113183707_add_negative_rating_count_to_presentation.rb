class AddNegativeRatingCountToPresentation < ActiveRecord::Migration
  def self.up
    add_column :presentations, :negative_ratings, :integer, :default => 0
  end

  def self.down
    remove_column :presentations, :negative_ratings
  end
end
