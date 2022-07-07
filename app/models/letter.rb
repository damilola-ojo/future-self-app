class Letter < ApplicationRecord
  validates :title, :content, :delivery_email, :delivery_date, presence: true
  belongs_to :user

  scope :public_letters, -> { where(public: true) }

  def send_letter
    LetterMailer.deliver_letter(self).deliver_later(wait_until: self.delivery_date)
  end

  # def in_future
  # end
end
