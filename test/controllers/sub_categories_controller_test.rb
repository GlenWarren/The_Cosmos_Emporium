require 'test_helper'

class SubCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sub_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get sub_categories_show_url
    assert_response :success
  end

  test "should get new" do
    get sub_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get sub_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get sub_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get sub_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sub_categories_destroy_url
    assert_response :success
  end

end
