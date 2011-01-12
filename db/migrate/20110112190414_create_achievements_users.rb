class CreateAchievementsUsers < ActiveRecord::Migration
  def self.up
  	create_table :achievements_users, :id => false do |t|
  		t.references :user, :achievement
  	end
  end

  def self.down
    drop_table :achievements_users
  end
end
