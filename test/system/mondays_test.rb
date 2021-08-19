require "application_system_test_case"

class MondaysTest < ApplicationSystemTestCase
  setup do
    @monday = mondays(:one)
  end

  test "visiting the index" do
    visit mondays_url
    assert_selector "h1", text: "Mondays"
  end

  test "creating a Monday" do
    visit mondays_url
    click_on "New Monday"

    fill_in "Prof", with: @monday.Prof
    fill_in "Subject", with: @monday.Subject
    fill_in "From", with: @monday.from
    fill_in "Link", with: @monday.link
    fill_in "To", with: @monday.to
    click_on "Create Monday"

    assert_text "Monday was successfully created"
    click_on "Back"
  end

  test "updating a Monday" do
    visit mondays_url
    click_on "Edit", match: :first

    fill_in "Prof", with: @monday.Prof
    fill_in "Subject", with: @monday.Subject
    fill_in "From", with: @monday.from
    fill_in "Link", with: @monday.link
    fill_in "To", with: @monday.to
    click_on "Update Monday"

    assert_text "Monday was successfully updated"
    click_on "Back"
  end

  test "destroying a Monday" do
    visit mondays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monday was successfully destroyed"
  end
end
