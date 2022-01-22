require "application_system_test_case"

class ModelesTest < ApplicationSystemTestCase
  setup do
    @modele = modeles(:one)
  end

  test "visiting the index" do
    visit modeles_url
    assert_selector "h1", text: "Modeles"
  end

  test "creating a Modele" do
    visit modeles_url
    click_on "New Modele"

    fill_in "Name", with: @modele.name
    click_on "Create Modele"

    assert_text "Modele was successfully created"
    click_on "Back"
  end

  test "updating a Modele" do
    visit modeles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @modele.name
    click_on "Update Modele"

    assert_text "Modele was successfully updated"
    click_on "Back"
  end

  test "destroying a Modele" do
    visit modeles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Modele was successfully destroyed"
  end
end
