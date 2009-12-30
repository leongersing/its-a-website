class CreateConferences < ActiveRecord::Migration
  def self.up
    create_table :conferences do |t|
      t.string :title
      t.datetime :starts_on
      t.datetime :ends_on
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :conferences
  end
end
