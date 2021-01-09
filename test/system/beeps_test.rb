require "application_system_test_case"

class BeepsTest < ApplicationSystemTestCase
  setup do
    @beep = beeps(:one)
  end

  test "visiting the index" do
    visit beeps_url
    assert_selector "h1", text: "Beeps"
  end

  test "creating a Beep" do
    visit beeps_url
    click_on "New Beep"

    fill_in "Author", with: @beep.author
    fill_in "Text", with: @beep.text
    click_on "Create Beep"

    assert_text "Beep was successfully created"
    click_on "Back"
  end

  test "updating a Beep" do
    visit beeps_url
    click_on "Edit", match: :first

    fill_in "Author", with: @beep.author
    fill_in "Text", with: @beep.text
    click_on "Update Beep"

    assert_text "Beep was successfully updated"
    click_on "Back"
  end

  test "destroying a Beep" do
    visit beeps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beep was successfully destroyed"
  end
end
