class AddRpisosToConstructions < ActiveRecord::Migration
  def change
  	add_column :constructions, :rpisos, :string
  	add_column :constructions, :rmuros, :string
  	add_column :constructions, :rtechos, :string
  	add_column :constructions, :rmadera, :string
  	add_column :constructions, :rmetal, :string
  	add_column :constructions, :rbanos, :string
  	add_column :constructions, :rcocina, :string
  end
end
