class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :orders, :reservations
    add_foreign_key :orders, :items
  end
end
