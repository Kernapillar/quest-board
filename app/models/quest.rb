class Quest < ApplicationRecord
    belongs_to :board
    belongs_to :author, class_name: "User"

    has_many :tasks, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true
    validates :visibility, inclusion: { in: ["personal", "public", "targeted"] }

    def completed?
        tasks.all?(&:completed)
    end

    def visibility?
        visibility
    end
end
