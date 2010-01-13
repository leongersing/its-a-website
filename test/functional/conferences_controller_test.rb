require 'test_helper'

class ConferencesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conference" do
    assert_difference('Conference.count') do
      post :create, :conference => { }
    end

    assert_redirected_to conference_path(assigns(:conference))
  end

  test "should show conference" do
    get :show, :id => conferences(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => conferences(:one).to_param
    assert_response :success
  end

  test "should update conference" do
    put :update, :id => conferences(:one).to_param, :conference => { }
    assert_redirected_to conference_path(assigns(:conference))
  end

  test "should destroy conference" do
    assert_difference('Conference.count', -1) do
      delete :destroy, :id => conferences(:one).to_param
    end

    assert_redirected_to conferences_path
  end
end
