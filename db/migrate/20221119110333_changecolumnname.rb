class Changecolumnname < ActiveRecord::Migration[7.0]
    def self.up
      rename_column :groups, :author_id, :user_id
      rename_column :expenditures, :author_id, :user_id
    end
end
