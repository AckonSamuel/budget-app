class Expenditure < ApplicationRecord
    belongs_to :users
    has_many :group_expenditures
    has_many :groups, through: :group_expenditures

    validates :name, presence: true
    validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
