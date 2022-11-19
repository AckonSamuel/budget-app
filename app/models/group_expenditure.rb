class GroupExpenditure < ApplicationRecord
    belongs_to :group, class_name: 'Group'
    belongs_to :expenditure, class_name: 'Expenditure'
end
