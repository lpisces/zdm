require 'test_helper'

class Cpanel::ThingsControllerTest < ActionController::TestCase
  setup do
    @cpanel_thing = cpanel_things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_thing" do
    assert_difference('Cpanel::Thing.count') do
      post :create, cpanel_thing: { click_url: @cpanel_thing.click_url, coupon_price: @cpanel_thing.coupon_price, master_pic_url: @cpanel_thing.master_pic_url, node_id: @cpanel_thing.node_id, price: @cpanel_thing.price, sub_pic_url: @cpanel_thing.sub_pic_url, title: @cpanel_thing.title }
    end

    assert_redirected_to cpanel_thing_path(assigns(:cpanel_thing))
  end

  test "should show cpanel_thing" do
    get :show, id: @cpanel_thing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_thing
    assert_response :success
  end

  test "should update cpanel_thing" do
    patch :update, id: @cpanel_thing, cpanel_thing: { click_url: @cpanel_thing.click_url, coupon_price: @cpanel_thing.coupon_price, master_pic_url: @cpanel_thing.master_pic_url, node_id: @cpanel_thing.node_id, price: @cpanel_thing.price, sub_pic_url: @cpanel_thing.sub_pic_url, title: @cpanel_thing.title }
    assert_redirected_to cpanel_thing_path(assigns(:cpanel_thing))
  end

  test "should destroy cpanel_thing" do
    assert_difference('Cpanel::Thing.count', -1) do
      delete :destroy, id: @cpanel_thing
    end

    assert_redirected_to cpanel_things_path
  end
end
