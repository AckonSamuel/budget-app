class Expenditure < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    has_many :group_expenditures, class_name: 'GroupExpenditure', foreign_key: 'expenditure_id'
    has_many :groups, through: :group_expenditures

    validates :name, presence: true
    validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
