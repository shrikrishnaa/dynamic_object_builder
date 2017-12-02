require 'test_helper'

class ObjectTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get object_types_index_url
    assert_response :success
  end

  test "should get new" do
    get object_types_new_url
    assert_response :success
  end

  test "should get create" do
    get object_types_create_url
    assert_response :success
  end

  test "should get show" do
    get object_types_show_url
    assert_response :success
  end

  test "should get destroy" do
    get object_types_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get object_types_edit_url
    assert_response :success
  end

end
