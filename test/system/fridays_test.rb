require "application_system_test_case"

class FridaysTest < ApplicationSystemTestCase
  setup do
    @friday = fridays(:one)
  end

  test "visiting the index" do
    visit fridays_url
    assert_selector "h1", text: "Fridays"
  end

  test "creating a Friday" do
    visit fridays_url
    click_on "New Friday"

    fill_in "Prof", with: @friday.Prof
    fill_in "Subject", with: @friday.Subject
    fill_in "From", with: @friday.from
    fill_in "Link", with: @friday.link
    fill_in "To", with: @friday.to
    click_on "Create Friday"

    assert_text "Friday was successfully created"
    click_on "Back"
  end

  test "updating a Friday" do
    visit fridays_url
    click_on "Edit", match: :first

    fill_in "Prof", with: @friday.Prof
    fill_in "Subject", with: @friday.Subject
    fill_in "From", with: @friday.from
    fill_in "Link", with: @friday.link
    fill_in "To", with: @friday.to
    click_on "Update Friday"

    assert_text "Friday was successfully updated"
    click_on "Back"
  end

  test "destroying a Friday" do
    visit fridays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friday was successfully destroyed"
  end
end
