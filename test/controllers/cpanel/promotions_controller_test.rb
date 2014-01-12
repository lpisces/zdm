require 'test_helper'

class Cpanel::PromotionsControllerTest < ActionController::TestCase
  setup do
    @cpanel_promotion = cpanel_promotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_promotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_promotion" do
    assert_difference('Cpanel::Promotion.count') do
      post :create, cpanel_promotion: { content: @cpanel_promotion.content, mall_id: @cpanel_promotion.mall_id, order: @cpanel_promotion.order, title: @cpanel_promotion.title, url: @cpanel_promotion.url }
    end

    assert_redirected_to cpanel_promotion_path(assigns(:cpanel_promotion))
  end

  test "should show cpanel_promotion" do
    get :show, id: @cpanel_promotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_promotion
    assert_response :success
  end

  test "should update cpanel_promotion" do
    patch :update, id: @cpanel_promotion, cpanel_promotion: { content: @cpanel_promotion.content, mall_id: @cpanel_promotion.mall_id, order: @cpanel_promotion.order, title: @cpanel_promotion.title, url: @cpanel_promotion.url }
    assert_redirected_to cpanel_promotion_path(assigns(:cpanel_promotion))
  end

  test "should destroy cpanel_promotion" do
    assert_difference('Cpanel::Promotion.count', -1) do
      delete :destroy, id: @cpanel_promotion
    end

    assert_redirected_to cpanel_promotions_path
  end
end
