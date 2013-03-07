require 'test_helper'

class RentestimatesControllerTest < ActionController::TestCase
  setup do
    @rentestimate = rentestimates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rentestimates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rentestimate" do
    assert_difference('Rentestimate.count') do
      post :create, rentestimate: { industry: @rentestimate.industry, location: @rentestimate.location, rent: @rentestimate.rent, size: @rentestimate.size }
    end

    assert_redirected_to rentestimate_path(assigns(:rentestimate))
  end

  test "should show rentestimate" do
    get :show, id: @rentestimate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rentestimate
    assert_response :success
  end

  test "should update rentestimate" do
    put :update, id: @rentestimate, rentestimate: { industry: @rentestimate.industry, location: @rentestimate.location, rent: @rentestimate.rent, size: @rentestimate.size }
    assert_redirected_to rentestimate_path(assigns(:rentestimate))
  end

  test "should destroy rentestimate" do
    assert_difference('Rentestimate.count', -1) do
      delete :destroy, id: @rentestimate
    end

    assert_redirected_to rentestimates_path
  end
end
