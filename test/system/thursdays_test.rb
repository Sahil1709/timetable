require "application_system_test_case"

class ThursdaysTest < ApplicationSystemTestCase
  setup do
    @thursday = thursdays(:one)
  end

  test "visiting the index" do
    visit thursdays_url
    assert_selector "h1", text: "Thursdays"
  end

  test "creating a Thursday" do
    visit thursdays_url
    click_on "New Thursday"

    fill_in "Prof", with: @thursday.Prof
    fill_in "Subject", with: @thursday.Subject
    fill_in "From", with: @thursday.from
    fill_in "Link", with: @thursday.link
    fill_in "To", with: @thursday.to
    click_on "Create Thursday"

    assert_text "Thursday was successfully created"
    click_on "Back"
  end

  test "updating a Thursday" do
    visit thursdays_url
    click_on "Edit", match: :first

    fill_in "Prof", with: @thursday.Prof
    fill_in "Subject", with: @thursday.Subject
    fill_in "From", with: @thursday.from
    fill_in "Link", with: @thursday.link
    fill_in "To", with: @thursday.to
    click_on "Update Thursday"

    assert_text "Thursday was successfully updated"
    click_on "Back"
  end

  test "destroying a Thursday" do
    visit thursdays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thursday was successfully destroyed"
  end
end
