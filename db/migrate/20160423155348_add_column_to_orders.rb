class AddColumnToOrders < ActiveRecord::Migration
  def change
      add_column :orders, :is_complete, :boolean, null: false, :default => false
  end
end
