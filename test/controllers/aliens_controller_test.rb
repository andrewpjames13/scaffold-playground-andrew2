require 'test_helper'

class AliensControllerTest < ActionController::TestCase
  setup do
    @alien = aliens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aliens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alien" do
    assert_difference('Alien.count') do
      post :create, alien: { date_of_birth: @alien.date_of_birth, first_name: @alien.first_name, last_name: @alien.last_name }
    end

    assert_redirected_to alien_path(assigns(:alien))
  end

  test "should show alien" do
    get :show, id: @alien
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alien
    assert_response :success
  end

  test "should update alien" do
    patch :update, id: @alien, alien: { date_of_birth: @alien.date_of_birth, first_name: @alien.first_name, last_name: @alien.last_name }
    assert_redirected_to alien_path(assigns(:alien))
  end

  test "should destroy alien" do
    assert_difference('Alien.count', -1) do
      delete :destroy, id: @alien
    end

    assert_redirected_to aliens_path
  end
end
