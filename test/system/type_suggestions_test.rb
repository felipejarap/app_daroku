require "application_system_test_case"

class TypeSuggestionsTest < ApplicationSystemTestCase
  setup do
    @type_suggestion = type_suggestions(:one)
  end

  test "visiting the index" do
    visit type_suggestions_url
    assert_selector "h1", text: "Type Suggestions"
  end

  test "creating a Type suggestion" do
    visit type_suggestions_url
    click_on "New Type Suggestion"

    fill_in "Description", with: @type_suggestion.description
    click_on "Create Type suggestion"

    assert_text "Type suggestion was successfully created"
    click_on "Back"
  end

  test "updating a Type suggestion" do
    visit type_suggestions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @type_suggestion.description
    click_on "Update Type suggestion"

    assert_text "Type suggestion was successfully updated"
    click_on "Back"
  end

  test "destroying a Type suggestion" do
    visit type_suggestions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type suggestion was successfully destroyed"
  end
end
