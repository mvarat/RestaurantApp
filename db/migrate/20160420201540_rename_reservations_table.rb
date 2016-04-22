class RenameReservationsTable < ActiveRecord::Migration
  def change
    rename_table :reservations, :parties
  end
end
