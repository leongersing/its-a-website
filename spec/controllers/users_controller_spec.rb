require 'spec_helper'

describe UsersController do

  before(:each) do
    require "authlogic/test_case"
    activate_authlogic
  end

  it "should be able to update a user" do
    user = User.new(:login => 'test', :password => 'test1234', :password_confirmation => 'test1234', :email => 'test@test.com')
    user.save!
    UserSession.create user
    post :update, {:id => user.id, :user => {:login => 'test2'}, :is_presenter => {:role => '0'}}
    user.reload
    user.login.should == 'test2'
  end

  it 'should be able to mark a user as a presenter' do
    user = User.new(:login => 'test', :password => 'test1234', :password_confirmation => 'test1234', :email => 'test@test.com')
    user.save!
    UserSession.create user
    post :update, {:id => user.id, :is_presenter => {:role => '1'}, :presenter => {}}
    user.reload
  end

  it 'should be able to unmark a user as a presenter' do
    user = User.new(:login => 'test', :password => 'test1234', :password_confirmation => 'test1234', :email => 'test@test.com')
    user.presenter_profile = PresenterProfile.create!
    user.save!
    UserSession.create user
    post :update, {:id => user.id, :is_presenter => {:role => '0'}}
    user.reload
  end

  it 'should be able to mark a user as a presenter with properties' do
    user = User.new(:login => 'test', :password => 'test1234', :password_confirmation => 'test1234', :email => 'test@test.com')
    user.save!
    UserSession.create user
    post :update, {:id => user.id, :is_presenter => {:role => '1'}, :presenter => {:name => 'Tester'}}
    user.reload
  end

  it 'should be able to update a user who is already a presenter with new properties' do
    user = User.new(:login => 'test', :password => 'test1234', :password_confirmation => 'test1234', :email => 'test@test.com')
    user.presenter_profile = PresenterProfile.create!(:name => 'Tester')
    user.save!
    UserSession.create user
    post :update, {:id => user.id, :is_presenter => {:role => '1'}, :presenter => {:name => 'Big Tester'}}
    user.reload
  end


end

