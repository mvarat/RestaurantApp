class AddColumnToParties < ActiveRecord::Migration
  def change
      add_column :parties, :active, :boolean, null: false, :default => true
  end
end
