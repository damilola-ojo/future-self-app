# Preview all emails at http://localhost:3000/rails/mailers/letter_mailer
class LetterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/letter_mailer/deliver_to_the_future
  def deliver_to_the_future
    LetterMailer.deliver_to_the_future
  end

end
