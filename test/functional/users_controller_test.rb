require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    @controller.class.send :public, :current_user=
    @controller.current_user=User.create :name=> "Test User", :id => 1
    get :index
    assert_response :success
  end

end
