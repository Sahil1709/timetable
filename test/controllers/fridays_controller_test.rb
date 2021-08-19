require "test_helper"

class FridaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friday = fridays(:one)
  end

  test "should get index" do
    get fridays_url
    assert_response :success
  end

  test "should get new" do
    get new_friday_url
    assert_response :success
  end

  test "should create friday" do
    assert_difference('Friday.count') do
      post fridays_url, params: { friday: { Prof: @friday.Prof, Subject: @friday.Subject, from: @friday.from, link: @friday.link, to: @friday.to } }
    end

    assert_redirected_to friday_url(Friday.last)
  end

  test "should show friday" do
    get friday_url(@friday)
    assert_response :success
  end

  test "should get edit" do
    get edit_friday_url(@friday)
    assert_response :success
  end

  test "should update friday" do
    patch friday_url(@friday), params: { friday: { Prof: @friday.Prof, Subject: @friday.Subject, from: @friday.from, link: @friday.link, to: @friday.to } }
    assert_redirected_to friday_url(@friday)
  end

  test "should destroy friday" do
    assert_difference('Friday.count', -1) do
      delete friday_url(@friday)
    end

    assert_redirected_to fridays_url
  end
end
