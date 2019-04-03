require "application_system_test_case"

class GuitarcatsTest < ApplicationSystemTestCase
  setup do
    @guitarcat = guitarcats(:one)
  end

  test "visiting the index" do
    visit guitarcats_url
    assert_selector "h1", text: "Guitarcats"
  end

  test "creating a Guitarcat" do
    visit guitarcats_url
    click_on "New Guitarcat"

    fill_in "Description", with: @guitarcat.description
    fill_in "Image", with: @guitarcat.image
    fill_in "Title", with: @guitarcat.title
    click_on "Create Guitarcat"

    assert_text "Guitarcat was successfully created"
    click_on "Back"
  end

  test "updating a Guitarcat" do
    visit guitarcats_url
    click_on "Edit", match: :first

    fill_in "Description", with: @guitarcat.description
    fill_in "Image", with: @guitarcat.image
    fill_in "Title", with: @guitarcat.title
    click_on "Update Guitarcat"

    assert_text "Guitarcat was successfully updated"
    click_on "Back"
  end

  test "destroying a Guitarcat" do
    visit guitarcats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guitarcat was successfully destroyed"
  end
end
