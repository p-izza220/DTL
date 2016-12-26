require 'test_helper'

class LifestylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lifestyle = lifestyles(:one)
  end

  test "should get index" do
    get lifestyles_url
    assert_response :success
  end

  test "should get new" do
    get new_lifestyle_url
    assert_response :success
  end

  test "should create lifestyle" do
    assert_difference('Lifestyle.count') do
      post lifestyles_url, params: { lifestyle: {  } }
    end

    assert_redirected_to lifestyle_url(Lifestyle.last)
  end

  test "should show lifestyle" do
    get lifestyle_url(@lifestyle)
    assert_response :success
  end

  test "should get edit" do
    get edit_lifestyle_url(@lifestyle)
    assert_response :success
  end

  test "should update lifestyle" do
    patch lifestyle_url(@lifestyle), params: { lifestyle: {  } }
    assert_redirected_to lifestyle_url(@lifestyle)
  end

  test "should destroy lifestyle" do
    assert_difference('Lifestyle.count', -1) do
      delete lifestyle_url(@lifestyle)
    end

    assert_redirected_to lifestyles_url
  end
end
