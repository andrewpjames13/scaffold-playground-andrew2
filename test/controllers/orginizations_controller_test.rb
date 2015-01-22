require 'test_helper'

class OrginizationsControllerTest < ActionController::TestCase
  setup do
    @orginization = orginizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orginizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orginization" do
    assert_difference('Orginization.count') do
      post :create, orginization: { name: @orginization.name, number_of_employees: @orginization.number_of_employees }
    end

    assert_redirected_to orginization_path(assigns(:orginization))
  end

  test "should show orginization" do
    get :show, id: @orginization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orginization
    assert_response :success
  end

  test "should update orginization" do
    patch :update, id: @orginization, orginization: { name: @orginization.name, number_of_employees: @orginization.number_of_employees }
    assert_redirected_to orginization_path(assigns(:orginization))
  end

  test "should destroy orginization" do
    assert_difference('Orginization.count', -1) do
      delete :destroy, id: @orginization
    end

    assert_redirected_to orginizations_path
  end
end
