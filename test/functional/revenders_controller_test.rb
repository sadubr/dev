require 'test_helper'

class RevendersControllerTest < ActionController::TestCase
  setup do
    @revender = revenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revender" do
    assert_difference('Revender.count') do
      post :create, :revender => @revender.attributes
    end

    assert_redirected_to revender_path(assigns(:revender))
  end

  test "should show revender" do
    get :show, :id => @revender.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @revender.to_param
    assert_response :success
  end

  test "should update revender" do
    put :update, :id => @revender.to_param, :revender => @revender.attributes
    assert_redirected_to revender_path(assigns(:revender))
  end

  test "should destroy revender" do
    assert_difference('Revender.count', -1) do
      delete :destroy, :id => @revender.to_param
    end

    assert_redirected_to revenders_path
  end
end
