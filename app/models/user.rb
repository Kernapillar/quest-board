class User < ApplicationRecord
  has_secure_password

  has_one :board
  
  has_many :sessions, dependent: :destroy
  has_many :quests, foreign_key: :author_id

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: { minimum: 6 }

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
