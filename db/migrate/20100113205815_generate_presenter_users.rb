class GeneratePresenterUsers < ActiveRecord::Migration
  
  def self.up
    add_column :presenters, :user_id, :integer
    
    Presenter.all.each do |p|
      l = p.name.downcase.gsub(/[^a-z0-9]/, '')
      user = User.new(:login => l, :email => 'foo@bar.com', 
        :password => "password", :password_confirmation => "password")
      user.save!
      p.user_id = user.id
      p.save!
    end
  end

  def self.down
    User.all.each do |u|
      if u.email == 'foo@bar.com'
        u.destroy
      end
    end
    remove_column :presenters, :user_id      
  end
end
