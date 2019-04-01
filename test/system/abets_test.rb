require "application_system_test_case"

class AbetsTest < ApplicationSystemTestCase
  setup do
    @abet = abets(:one)
  end

  test "visiting the index" do
    visit abets_url
    assert_selector "h1", text: "Abets"
  end

  test "creating a Abet" do
    visit abets_url
    click_on "New Abet"

    fill_in "Acceptable", with: @abet.acceptable
    fill_in "Description", with: @abet.description
    fill_in "Exceeds", with: @abet.exceeds
    fill_in "Poor", with: @abet.poor
    click_on "Create Abet"

    assert_text "Abet was successfully created"
    click_on "Back"
  end

  test "updating a Abet" do
    visit abets_url
    click_on "Edit", match: :first

    fill_in "Acceptable", with: @abet.acceptable
    fill_in "Description", with: @abet.description
    fill_in "Exceeds", with: @abet.exceeds
    fill_in "Poor", with: @abet.poor
    click_on "Update Abet"

    assert_text "Abet was successfully updated"
    click_on "Back"
  end

  test "destroying a Abet" do
    visit abets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abet was successfully destroyed"
  end
end
