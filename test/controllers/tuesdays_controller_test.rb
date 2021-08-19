require "test_helper"

class TuesdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuesday = tuesdays(:one)
  end

  test "should get index" do
    get tuesdays_url
    assert_response :success
  end

  test "should get new" do
    get new_tuesday_url
    assert_response :success
  end

  test "should create tuesday" do
    assert_difference('Tuesday.count') do
      post tuesdays_url, params: { tuesday: { Prof: @tuesday.Prof, Subject: @tuesday.Subject, from: @tuesday.from, link: @tuesday.link, to: @tuesday.to } }
    end

    assert_redirected_to tuesday_url(Tuesday.last)
  end

  test "should show tuesday" do
    get tuesday_url(@tuesday)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuesday_url(@tuesday)
    assert_response :success
  end

  test "should update tuesday" do
    patch tuesday_url(@tuesday), params: { tuesday: { Prof: @tuesday.Prof, Subject: @tuesday.Subject, from: @tuesday.from, link: @tuesday.link, to: @tuesday.to } }
    assert_redirected_to tuesday_url(@tuesday)
  end

  test "should destroy tuesday" do
    assert_difference('Tuesday.count', -1) do
      delete tuesday_url(@tuesday)
    end

    assert_redirected_to tuesdays_url
  end
end
