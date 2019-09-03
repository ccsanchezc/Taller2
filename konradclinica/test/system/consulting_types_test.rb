require "application_system_test_case"

class ConsultingTypesTest < ApplicationSystemTestCase
  setup do
    @consulting_type = consulting_types(:one)
  end

  test "visiting the index" do
    visit consulting_types_url
    assert_selector "h1", text: "Consulting Types"
  end

  test "creating a Consulting type" do
    visit consulting_types_url
    click_on "New Consulting Type"

    fill_in "Name", with: @consulting_type.name
    click_on "Create Consulting type"

    assert_text "Consulting type was successfully created"
    click_on "Back"
  end

  test "updating a Consulting type" do
    visit consulting_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @consulting_type.name
    click_on "Update Consulting type"

    assert_text "Consulting type was successfully updated"
    click_on "Back"
  end

  test "destroying a Consulting type" do
    visit consulting_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consulting type was successfully destroyed"
  end
end
