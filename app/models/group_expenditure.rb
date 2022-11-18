class GroupExpenditure < ApplicationRecord
    belongs_to :groups
    belongs_to :expenditures
end
