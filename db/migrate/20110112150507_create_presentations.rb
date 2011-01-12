class CreatePresentations < ActiveRecord::Migration
  def self.up
    create_table :presentations do |t|
      t.string :name
      t.string :description
      t.string :room
      t.integer :duration
      t.string :speaker_name
      t.datetime :starts_at

      t.timestamps
    end
  end

  def self.down
    drop_table :presentations
  end
end
