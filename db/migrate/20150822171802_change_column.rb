class ChangeColumn < ActiveRecord::Migration
  def change
  	remove_column :machines, :description
  	add_column :machines, :description, :text
  end
end
