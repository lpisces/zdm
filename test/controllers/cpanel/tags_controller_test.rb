require 'test_helper'

class Cpanel::TagsControllerTest < ActionController::TestCase
  setup do
    @cpanel_tag = cpanel_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_tag" do
    assert_difference('Cpanel::Tag.count') do
      post :create, cpanel_tag: { name: @cpanel_tag.name, section_id: @cpanel_tag.section_id }
    end

    assert_redirected_to cpanel_tag_path(assigns(:cpanel_tag))
  end

  test "should show cpanel_tag" do
    get :show, id: @cpanel_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_tag
    assert_response :success
  end

  test "should update cpanel_tag" do
    patch :update, id: @cpanel_tag, cpanel_tag: { name: @cpanel_tag.name, section_id: @cpanel_tag.section_id }
    assert_redirected_to cpanel_tag_path(assigns(:cpanel_tag))
  end

  test "should destroy cpanel_tag" do
    assert_difference('Cpanel::Tag.count', -1) do
      delete :destroy, id: @cpanel_tag
    end

    assert_redirected_to cpanel_tags_path
  end
end
