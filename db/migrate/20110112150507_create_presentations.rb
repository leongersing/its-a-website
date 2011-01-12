class CreatePresentations < ActiveRecord::Migration
  def self.up
    create_table :presentations do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :presentations
  end
end
