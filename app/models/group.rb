class Group < ApplicationRecord
    belongs_to :users
    has_many :entity_groups
end
