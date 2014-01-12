require 'test_helper'

class Cpanel::MallsControllerTest < ActionController::TestCase
  setup do
    @cpanel_mall = cpanel_malls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_malls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_mall" do
    assert_difference('Cpanel::Mall.count') do
      post :create, cpanel_mall: { logo_url: @cpanel_mall.logo_url, mall_type: @cpanel_mall.mall_type, name: @cpanel_mall.name, url: @cpanel_mall.url }
    end

    assert_redirected_to cpanel_mall_path(assigns(:cpanel_mall))
  end

  test "should show cpanel_mall" do
    get :show, id: @cpanel_mall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_mall
    assert_response :success
  end

  test "should update cpanel_mall" do
    patch :update, id: @cpanel_mall, cpanel_mall: { logo_url: @cpanel_mall.logo_url, mall_type: @cpanel_mall.mall_type, name: @cpanel_mall.name, url: @cpanel_mall.url }
    assert_redirected_to cpanel_mall_path(assigns(:cpanel_mall))
  end

  test "should destroy cpanel_mall" do
    assert_difference('Cpanel::Mall.count', -1) do
      delete :destroy, id: @cpanel_mall
    end

    assert_redirected_to cpanel_malls_path
  end
end
