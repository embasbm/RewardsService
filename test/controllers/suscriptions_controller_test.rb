require 'test_helper'

class SuscriptionsControllerTest < ActionController::TestCase
  setup do
    @suscription = suscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suscription" do
    assert_difference('Suscription.count') do
      post :create, suscription: { customer_id: @suscription.customer_id,
                                   channel_id:  @suscription.channel_id,
                                   expire_date: @suscription.expire_date
                                  }
    end

    assert_redirected_to suscriptions_path
  end

  test "should get edit" do
    get :edit, id: @suscription
    assert_response :success
  end

  test "should update suscription" do
    patch :update, id: @suscription, suscription: { customer_id: @suscription.customer_id,
                                                    channel_id:  @suscription.channel_id,
                                                    expire_date: @suscription.expire_date
                                                  }
    assert_redirected_to suscriptions_path
  end

end
