require 'test_helper'

class GamezsControllerTest < ActionController::TestCase
  setup do
    @gamez = gamezs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamezs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamez" do
    assert_difference('Gamez.count') do
      post :create, gamez: @gamez.attributes
    end

    assert_redirected_to gamez_path(assigns(:gamez))
  end

  test "should show gamez" do
    get :show, id: @gamez.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamez.to_param
    assert_response :success
  end

  test "should update gamez" do
    put :update, id: @gamez.to_param, gamez: @gamez.attributes
    assert_redirected_to gamez_path(assigns(:gamez))
  end

  test "should destroy gamez" do
    assert_difference('Gamez.count', -1) do
      delete :destroy, id: @gamez.to_param
    end

    assert_redirected_to gamezs_path
  end
end
