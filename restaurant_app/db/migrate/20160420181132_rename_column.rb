class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :reservations, :server_id, :user_id
  end
end
