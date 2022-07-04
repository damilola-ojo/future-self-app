class Letter < ApplicationRecord
  validates :title, :content, :delivery_email, presence: true
  belongs_to :user
end
