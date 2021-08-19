require "test_helper"

class MondaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monday = mondays(:one)
  end

  test "should get index" do
    get mondays_url
    assert_response :success
  end

  test "should get new" do
    get new_monday_url
    assert_response :success
  end

  test "should create monday" do
    assert_difference('Monday.count') do
      post mondays_url, params: { monday: { Prof: @monday.Prof, Subject: @monday.Subject, from: @monday.from, link: @monday.link, to: @monday.to } }
    end

    assert_redirected_to monday_url(Monday.last)
  end

  test "should show monday" do
    get monday_url(@monday)
    assert_response :success
  end

  test "should get edit" do
    get edit_monday_url(@monday)
    assert_response :success
  end

  test "should update monday" do
    patch monday_url(@monday), params: { monday: { Prof: @monday.Prof, Subject: @monday.Subject, from: @monday.from, link: @monday.link, to: @monday.to } }
    assert_redirected_to monday_url(@monday)
  end

  test "should destroy monday" do
    assert_difference('Monday.count', -1) do
      delete monday_url(@monday)
    end

    assert_redirected_to mondays_url
  end
end
