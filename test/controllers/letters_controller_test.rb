require "test_helper"

class LettersControllerTest < ActionDispatch::IntegrationTest

  def setup 
    @letter = letters(:example)
  end

  test "should redirect index when not logged in" do
    get letters_path
    assert_redirected_to new_user_session_path
  end

  test "should redirect new when not logged in" do
    get new_letter_path
    assert_redirected_to new_user_session_path
  end

  test "should redirect edit when not logged in" do
    get edit_letter_url(@letter)
    assert_redirected_to new_user_session_path 
  end

end
