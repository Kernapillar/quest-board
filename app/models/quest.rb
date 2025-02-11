class Quest < ApplicationRecord
    belongs_to :board
    belongs_to :author, class_name: "User"
end
