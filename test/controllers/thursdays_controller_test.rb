require "test_helper"

class ThursdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thursday = thursdays(:one)
  end

  test "should get index" do
    get thursdays_url
    assert_response :success
  end

  test "should get new" do
    get new_thursday_url
    assert_response :success
  end

  test "should create thursday" do
    assert_difference('Thursday.count') do
      post thursdays_url, params: { thursday: { Prof: @thursday.Prof, Subject: @thursday.Subject, from: @thursday.from, link: @thursday.link, to: @thursday.to } }
    end

    assert_redirected_to thursday_url(Thursday.last)
  end

  test "should show thursday" do
    get thursday_url(@thursday)
    assert_response :success
  end

  test "should get edit" do
    get edit_thursday_url(@thursday)
    assert_response :success
  end

  test "should update thursday" do
    patch thursday_url(@thursday), params: { thursday: { Prof: @thursday.Prof, Subject: @thursday.Subject, from: @thursday.from, link: @thursday.link, to: @thursday.to } }
    assert_redirected_to thursday_url(@thursday)
  end

  test "should destroy thursday" do
    assert_difference('Thursday.count', -1) do
      delete thursday_url(@thursday)
    end

    assert_redirected_to thursdays_url
  end
end
