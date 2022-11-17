class Group < ApplicationRecord
    belongs_to :users
    has_many :group_expenditures
    has_many :expenditures, through: :group_expenditures

    validates :name, presence: true
    validates :icon, presence: true

    def recent_expenditures
        expenditures.order(created_at: :desc)        
    end

    def total_expenditures
        expenditures.sum(&:amount)
    end

    def expenditures_count
        expenditures.count
    end
end
