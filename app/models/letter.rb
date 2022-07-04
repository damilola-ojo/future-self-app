class Letter < ApplicationRecord
  validates :title, :content, :delivery_date, :delivery_email, presence: true
end
