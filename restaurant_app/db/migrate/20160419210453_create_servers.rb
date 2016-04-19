class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
