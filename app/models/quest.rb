class Quest < ApplicationRecord
    belongs_to :board
    belongs_to :author, class_name: "User"

    has_many :tasks, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true
    validates :visibility, inclusion: { in: ["personal", "public", "targeted"] }
    validates :repeat, inclusion: { in: ["never", "daily", "weekly", "monthly"] }

    def completed?
        tasks.all?(&:completed)
    end

    def visibility?
        visibility
    end

    def repeat?
        repeat
    end
end
