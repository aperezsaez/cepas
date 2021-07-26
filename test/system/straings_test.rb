require "application_system_test_case"

class StraingsTest < ApplicationSystemTestCase
  setup do
    @straing = straings(:one)
  end

  test "visiting the index" do
    visit straings_url
    assert_selector "h1", text: "Straings"
  end

  test "creating a Straing" do
    visit straings_url
    click_on "New Straing"

    fill_in "Name", with: @straing.name
    click_on "Create Straing"

    assert_text "Straing was successfully created"
    click_on "Back"
  end

  test "updating a Straing" do
    visit straings_url
    click_on "Edit", match: :first

    fill_in "Name", with: @straing.name
    click_on "Update Straing"

    assert_text "Straing was successfully updated"
    click_on "Back"
  end

  test "destroying a Straing" do
    visit straings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Straing was successfully destroyed"
  end
end
