require 'test_helper'

class ObjectDataValuesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get object_data_values_index_url
    assert_response :success
  end

  test "should get create" do
    get object_data_values_create_url
    assert_response :success
  end

  test "should get show" do
    get object_data_values_show_url
    assert_response :success
  end

end
