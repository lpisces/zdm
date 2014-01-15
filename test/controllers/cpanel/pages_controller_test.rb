require 'test_helper'

class Cpanel::PagesControllerTest < ActionController::TestCase
  setup do
    @cpanel_page = cpanel_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_page" do
    assert_difference('Cpanel::Page.count') do
      post :create, cpanel_page: { content: @cpanel_page.content, name: @cpanel_page.name }
    end

    assert_redirected_to cpanel_page_path(assigns(:cpanel_page))
  end

  test "should show cpanel_page" do
    get :show, id: @cpanel_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_page
    assert_response :success
  end

  test "should update cpanel_page" do
    patch :update, id: @cpanel_page, cpanel_page: { content: @cpanel_page.content, name: @cpanel_page.name }
    assert_redirected_to cpanel_page_path(assigns(:cpanel_page))
  end

  test "should destroy cpanel_page" do
    assert_difference('Cpanel::Page.count', -1) do
      delete :destroy, id: @cpanel_page
    end

    assert_redirected_to cpanel_pages_path
  end
end
