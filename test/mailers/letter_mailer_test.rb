require "test_helper"

class LetterMailerTest < ActionMailer::TestCase
  setup do
    @letter = letters(:example)
  end

  test "deliver_letter" do
    mail = LetterMailer.deliver_letter(@letter)
    assert_equal "Example Letter!", mail.subject
    assert_match "Hi", mail.body.encoded
  end

end
