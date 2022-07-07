class LetterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.letter_mailer.deliver_to_the_future.subject
  #
  def deliver_letter(letter)
    @letter = letter
    @user = letter.user
    mail to:  @letter.delivery_email, subject: @letter.title
  end

end
