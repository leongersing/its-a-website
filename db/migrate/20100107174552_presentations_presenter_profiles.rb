class PresentationsPresenterProfiles < ActiveRecord::Migration
  def self.up
    create_table :presentations_presenter_profiles, :id => false do |t|
      t.integer :presentation_id
      t.integer :presenter_profile_id
      t.timestamps
    end
  end

  def self.down
    drop_table :presentations_presenter_profiles
  end
end
