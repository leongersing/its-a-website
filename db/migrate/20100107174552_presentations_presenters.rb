class PresentationsPresenters < ActiveRecord::Migration
  def self.up
    create_table :presentations_presenters, :id => false do |t|
      t.integer :presentation_id
      t.integer :presenter_id
      t.timestamps
    end
  end

  def self.down
    drop_table :presentations_presenters
  end
end
