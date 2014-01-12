require 'test_helper'

class Cpanel::AdsControllerTest < ActionController::TestCase
  setup do
    @cpanel_ad = cpanel_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_ad" do
    assert_difference('Cpanel::Ad.count') do
      post :create, cpanel_ad: { description: @cpanel_ad.description, height: @cpanel_ad.height, is_displayed: @cpanel_ad.is_displayed, position: @cpanel_ad.position, url: @cpanel_ad.url, width: @cpanel_ad.width }
    end

    assert_redirected_to cpanel_ad_path(assigns(:cpanel_ad))
  end

  test "should show cpanel_ad" do
    get :show, id: @cpanel_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_ad
    assert_response :success
  end

  test "should update cpanel_ad" do
    patch :update, id: @cpanel_ad, cpanel_ad: { description: @cpanel_ad.description, height: @cpanel_ad.height, is_displayed: @cpanel_ad.is_displayed, position: @cpanel_ad.position, url: @cpanel_ad.url, width: @cpanel_ad.width }
    assert_redirected_to cpanel_ad_path(assigns(:cpanel_ad))
  end

  test "should destroy cpanel_ad" do
    assert_difference('Cpanel::Ad.count', -1) do
      delete :destroy, id: @cpanel_ad
    end

    assert_redirected_to cpanel_ads_path
  end
end
