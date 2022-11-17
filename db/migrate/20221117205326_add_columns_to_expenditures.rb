class AddColumnsToExpenditures < ActiveRecord::Migration[7.0]
  def change
    add_column :expenditures, :name, :string
    add_column :expenditures, :amount, :money
  end
end
