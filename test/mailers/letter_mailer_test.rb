require "test_helper"

class LetterMailerTest < ActionMailer::TestCase
  test "deliver_to_the_future" do
    mail = LetterMailer.deliver_to_the_future
    assert_equal "Deliver to the future", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end