class AddIsActiveToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :is_active, :boolean, null: false, default: true
  end
end
