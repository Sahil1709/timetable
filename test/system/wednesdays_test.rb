require "application_system_test_case"

class WednesdaysTest < ApplicationSystemTestCase
  setup do
    @wednesday = wednesdays(:one)
  end

  test "visiting the index" do
    visit wednesdays_url
    assert_selector "h1", text: "Wednesdays"
  end

  test "creating a Wednesday" do
    visit wednesdays_url
    click_on "New Wednesday"

    fill_in "Prof", with: @wednesday.Prof
    fill_in "Subject", with: @wednesday.Subject
    fill_in "From", with: @wednesday.from
    fill_in "Link", with: @wednesday.link
    fill_in "To", with: @wednesday.to
    click_on "Create Wednesday"

    assert_text "Wednesday was successfully created"
    click_on "Back"
  end

  test "updating a Wednesday" do
    visit wednesdays_url
    click_on "Edit", match: :first

    fill_in "Prof", with: @wednesday.Prof
    fill_in "Subject", with: @wednesday.Subject
    fill_in "From", with: @wednesday.from
    fill_in "Link", with: @wednesday.link
    fill_in "To", with: @wednesday.to
    click_on "Update Wednesday"

    assert_text "Wednesday was successfully updated"
    click_on "Back"
  end

  test "destroying a Wednesday" do
    visit wednesdays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wednesday was successfully destroyed"
  end
end
