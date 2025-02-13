class Quest < ApplicationRecord
    belongs_to :board
    belongs_to :author, class_name: "User"

    has_many :tasks, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true

    def completed?
        tasks.all?(&:completed)
    end
end
