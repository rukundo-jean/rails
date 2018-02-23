class Contact < ApplicationRecord
  validates :content, length: { in: 1..140 }
  validates :name, presence: true
  validates :email, presence: true
end
