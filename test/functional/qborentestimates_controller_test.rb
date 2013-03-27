require 'test_helper'

class QborentestimatesControllerTest < ActionController::TestCase
  setup do
    @qborentestimate = qborentestimates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qborentestimates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qborentestimate" do
    assert_difference('Qborentestimate.count') do
      post :create, qborentestimate: { email: @qborentestimate.email, image: @qborentestimate.image, industry: @qborentestimate.industry, location: @qborentestimate.location, rent: @qborentestimate.rent, size: @qborentestimate.size, subindustry: @qborentestimate.subindustry, trackingId: @qborentestimate.trackingId }
    end

    assert_redirected_to qborentestimate_path(assigns(:qborentestimate))
  end

  test "should show qborentestimate" do
    get :show, id: @qborentestimate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qborentestimate
    assert_response :success
  end

  test "should update qborentestimate" do
    put :update, id: @qborentestimate, qborentestimate: { email: @qborentestimate.email, image: @qborentestimate.image, industry: @qborentestimate.industry, location: @qborentestimate.location, rent: @qborentestimate.rent, size: @qborentestimate.size, subindustry: @qborentestimate.subindustry, trackingId: @qborentestimate.trackingId }
    assert_redirected_to qborentestimate_path(assigns(:qborentestimate))
  end

  test "should destroy qborentestimate" do
    assert_difference('Qborentestimate.count', -1) do
      delete :destroy, id: @qborentestimate
    end

    assert_redirected_to qborentestimates_path
  end
end
