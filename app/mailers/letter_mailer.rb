class LetterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.letter_mailer.deliver_to_the_future.subject
  #
  def deliver_to_the_future
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
