class User < ApplicationRecord
  has_many :microposts

  validates :name, length: { minimum: 3, maximum: 12 },

                   presence: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end
