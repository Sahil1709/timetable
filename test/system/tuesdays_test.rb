require "application_system_test_case"

class TuesdaysTest < ApplicationSystemTestCase
  setup do
    @tuesday = tuesdays(:one)
  end

  test "visiting the index" do
    visit tuesdays_url
    assert_selector "h1", text: "Tuesdays"
  end

  test "creating a Tuesday" do
    visit tuesdays_url
    click_on "New Tuesday"

    fill_in "Prof", with: @tuesday.Prof
    fill_in "Subject", with: @tuesday.Subject
    fill_in "From", with: @tuesday.from
    fill_in "Link", with: @tuesday.link
    fill_in "To", with: @tuesday.to
    click_on "Create Tuesday"

    assert_text "Tuesday was successfully created"
    click_on "Back"
  end

  test "updating a Tuesday" do
    visit tuesdays_url
    click_on "Edit", match: :first

    fill_in "Prof", with: @tuesday.Prof
    fill_in "Subject", with: @tuesday.Subject
    fill_in "From", with: @tuesday.from
    fill_in "Link", with: @tuesday.link
    fill_in "To", with: @tuesday.to
    click_on "Update Tuesday"

    assert_text "Tuesday was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuesday" do
    visit tuesdays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuesday was successfully destroyed"
  end
end
