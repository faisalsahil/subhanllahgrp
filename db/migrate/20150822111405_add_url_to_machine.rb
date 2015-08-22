class AddUrlToMachine < ActiveRecord::Migration
  def change
    add_column :machines, :url, :string
  end
end
