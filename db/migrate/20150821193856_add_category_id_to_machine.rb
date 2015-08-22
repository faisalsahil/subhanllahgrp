class AddCategoryIdToMachine < ActiveRecord::Migration
  def change
    add_column :machines, :category_id, :integer
  end
end
