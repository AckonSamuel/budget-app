class DropUserTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :group_expenditures
    drop_table :expenditures
    drop_table :groups
  end
end
