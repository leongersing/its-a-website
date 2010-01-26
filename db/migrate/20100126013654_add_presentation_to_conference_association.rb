class AddPresentationToConferenceAssociation < ActiveRecord::Migration
  def self.up
    add_column :presentations, :conference_id, :integer
  end

  def self.down
    remove_column :presentations, :conference_id
  end
end
