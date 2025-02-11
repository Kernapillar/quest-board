class User < ApplicationRecord
    has_one :board
    has_many :quests, foreign_key: :author_id

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true, length: { minimum: 6 }
end
