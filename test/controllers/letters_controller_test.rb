require "test_helper"

class LettersControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get letters_path
    assert_response :success
  end

  test "should get new" do
    get new_letter_path
    assert_response :success
  end

  test "should get edit" do
    get edit_letter_path(Letter.first)
    assert_response :success
  end
end
