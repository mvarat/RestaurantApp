class RenameReservationIdColumn < ActiveRecord::Migration
  def change
        rename_column :orders, :reservation_id, :party_id
  end
end
