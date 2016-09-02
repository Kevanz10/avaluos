class AddTotalToConstructions < ActiveRecord::Migration
  def change
  	add_column :constructions, :total, :string
  end
end
