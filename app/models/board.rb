class Board < ApplicationRecord
    has_many :quests
    belongs_to :owner

end
