require 'test_helper'

class FiltersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get filters_index_url
    assert_response :success
  end

  test "should get show" do
    get filters_show_url
    assert_response :success
  end

  test "should get new" do
    get filters_new_url
    assert_response :success
  end

  test "should get create" do
    get filters_create_url
    assert_response :success
  end

  test "should get edit" do
    get filters_edit_url
    assert_response :success
  end

  test "should get update" do
    get filters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get filters_destroy_url
    assert_response :success
  end

end
