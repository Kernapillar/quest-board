class Quest < ApplicationRecord
    belongs_to :board
    belongs_to :author, class_name: "User"

    has_many :tasks, dependent: :destroy



    def completed?
        tasks.all?(&:completed)
    end
end
