require 'test_helper'

class StraingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @straing = straings(:one)
  end

  test "should get index" do
    get straings_url
    assert_response :success
  end

  test "should get new" do
    get new_straing_url
    assert_response :success
  end

  test "should create straing" do
    assert_difference('Straing.count') do
      post straings_url, params: { straing: { name: @straing.name } }
    end

    assert_redirected_to straing_url(Straing.last)
  end

  test "should show straing" do
    get straing_url(@straing)
    assert_response :success
  end

  test "should get edit" do
    get edit_straing_url(@straing)
    assert_response :success
  end

  test "should update straing" do
    patch straing_url(@straing), params: { straing: { name: @straing.name } }
    assert_redirected_to straing_url(@straing)
  end

  test "should destroy straing" do
    assert_difference('Straing.count', -1) do
      delete straing_url(@straing)
    end

    assert_redirected_to straings_url
  end
end
