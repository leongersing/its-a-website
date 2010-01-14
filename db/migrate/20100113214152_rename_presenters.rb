class RenamePresentersToPresenterProfiles < ActiveRecord::Migration
  def self.up
    rename_table :presenters, :presenter_profiles
  end

  def self.down
    rename_table :presenter_profiles, :presenters
  end
end
