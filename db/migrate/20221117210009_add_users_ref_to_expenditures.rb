class AddUsersRefToExpenditures < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenditures, :users, null: false, foreign_key: true
  end
end
