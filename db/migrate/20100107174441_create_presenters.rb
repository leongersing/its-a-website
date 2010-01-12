class CreatePresenters < ActiveRecord::Migration
  def self.up
    create_table :presenters do |t|
      t.string :name
      t.string :reference_data
      t.string :bio
      t.string :contact_info
      t.string :blog_url
      t.string :twitter_name

      t.timestamps
    end
  end

  def self.down
    drop_table :presenters
  end
end
