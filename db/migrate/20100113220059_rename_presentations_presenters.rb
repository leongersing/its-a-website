class RenamePresentationsPresenters < ActiveRecord::Migration
  def self.up
    rename_table :presentations_presenters, :presentations_presenter_profiles
    rename_column :presentations_presenter_profiles, :presenter_id, :presenter_profile_id
  end

  def self.down
    rename_column :presentations_presenter_profiles, :presenter_profile_id, :presenter_id
    rename_table :presentations_presenter_profiles, :presentations_presenters
  end
end
