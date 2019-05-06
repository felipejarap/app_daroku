require 'test_helper'

class TypeSuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_suggestion = type_suggestions(:one)
  end

  test "should get index" do
    get type_suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_type_suggestion_url
    assert_response :success
  end

  test "should create type_suggestion" do
    assert_difference('TypeSuggestion.count') do
      post type_suggestions_url, params: { type_suggestion: { description: @type_suggestion.description } }
    end

    assert_redirected_to type_suggestion_url(TypeSuggestion.last)
  end

  test "should show type_suggestion" do
    get type_suggestion_url(@type_suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_suggestion_url(@type_suggestion)
    assert_response :success
  end

  test "should update type_suggestion" do
    patch type_suggestion_url(@type_suggestion), params: { type_suggestion: { description: @type_suggestion.description } }
    assert_redirected_to type_suggestion_url(@type_suggestion)
  end

  test "should destroy type_suggestion" do
    assert_difference('TypeSuggestion.count', -1) do
      delete type_suggestion_url(@type_suggestion)
    end

    assert_redirected_to type_suggestions_url
  end
end
