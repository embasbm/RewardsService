require 'test_helper'

class RewardsControllerTest < ActionController::TestCase
  setup do
    @reward = rewards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rewards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reward" do
    assert_difference('Reward.count') do
      post :create, reward: { description: @reward.description }
    end

    assert_redirected_to reward_path(assigns(:reward))
  end

  test "should get edit" do
    get :edit, id: @reward
    assert_response :success
  end

  test "should update reward" do
    patch :update, id: @reward, reward: { description: @reward.description }
    assert_redirected_to reward_path(assigns(:reward))
  end

end
