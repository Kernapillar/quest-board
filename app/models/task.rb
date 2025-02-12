class Task < ApplicationRecord
  belongs_to :quest
  validates :description, presence: true
end
