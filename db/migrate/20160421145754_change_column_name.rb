class ChangeColumnName < ActiveRecord::Migration
  def change

        rename_column :items, :cuisine, :category
        
  end
end
