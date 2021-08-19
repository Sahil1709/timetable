require "test_helper"

class WednesdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wednesday = wednesdays(:one)
  end

  test "should get index" do
    get wednesdays_url
    assert_response :success
  end

  test "should get new" do
    get new_wednesday_url
    assert_response :success
  end

  test "should create wednesday" do
    assert_difference('Wednesday.count') do
      post wednesdays_url, params: { wednesday: { Prof: @wednesday.Prof, Subject: @wednesday.Subject, from: @wednesday.from, link: @wednesday.link, to: @wednesday.to } }
    end

    assert_redirected_to wednesday_url(Wednesday.last)
  end

  test "should show wednesday" do
    get wednesday_url(@wednesday)
    assert_response :success
  end

  test "should get edit" do
    get edit_wednesday_url(@wednesday)
    assert_response :success
  end

  test "should update wednesday" do
    patch wednesday_url(@wednesday), params: { wednesday: { Prof: @wednesday.Prof, Subject: @wednesday.Subject, from: @wednesday.from, link: @wednesday.link, to: @wednesday.to } }
    assert_redirected_to wednesday_url(@wednesday)
  end

  test "should destroy wednesday" do
    assert_difference('Wednesday.count', -1) do
      delete wednesday_url(@wednesday)
    end

    assert_redirected_to wednesdays_url
  end
end
