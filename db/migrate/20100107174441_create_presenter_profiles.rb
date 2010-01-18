class CreatePresenterProfiles < ActiveRecord::Migration
  def self.up
    create_table :presenter_profiles do |t|
      t.string :name
      t.string :reference_data
      t.text :bio
      t.string :contact_info
      t.string :blog_url
      t.string :twitter_name
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :presenter_profiles
  end
end
