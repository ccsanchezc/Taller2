require 'test_helper'

class ConsultingTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulting_type = consulting_types(:one)
  end

  test "should get index" do
    get consulting_types_url
    assert_response :success
  end

  test "should get new" do
    get new_consulting_type_url
    assert_response :success
  end

  test "should create consulting_type" do
    assert_difference('ConsultingType.count') do
      post consulting_types_url, params: { consulting_type: { name: @consulting_type.name } }
    end

    assert_redirected_to consulting_type_url(ConsultingType.last)
  end

  test "should show consulting_type" do
    get consulting_type_url(@consulting_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulting_type_url(@consulting_type)
    assert_response :success
  end

  test "should update consulting_type" do
    patch consulting_type_url(@consulting_type), params: { consulting_type: { name: @consulting_type.name } }
    assert_redirected_to consulting_type_url(@consulting_type)
  end

  test "should destroy consulting_type" do
    assert_difference('ConsultingType.count', -1) do
      delete consulting_type_url(@consulting_type)
    end

    assert_redirected_to consulting_types_url
  end
end
