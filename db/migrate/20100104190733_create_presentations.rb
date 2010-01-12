class CreatePresentations < ActiveRecord::Migration
  def self.up
    create_table :presentations do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.string :location
      t.string :level
      t.string :technology
      t.integer :category_id
      t.string :reference_data

      t.timestamps
    end
  end

  def self.down
    drop_table :presentations
  end
end
