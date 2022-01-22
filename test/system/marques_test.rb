require "application_system_test_case"

class MarquesTest < ApplicationSystemTestCase
  setup do
    @marque = marques(:one)
  end

  test "visiting the index" do
    visit marques_url
    assert_selector "h1", text: "Marques"
  end

  test "creating a Marque" do
    visit marques_url
    click_on "New Marque"

    fill_in "Name", with: @marque.name
    click_on "Create Marque"

    assert_text "Marque was successfully created"
    click_on "Back"
  end

  test "updating a Marque" do
    visit marques_url
    click_on "Edit", match: :first

    fill_in "Name", with: @marque.name
    click_on "Update Marque"

    assert_text "Marque was successfully updated"
    click_on "Back"
  end

  test "destroying a Marque" do
    visit marques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marque was successfully destroyed"
  end
end
