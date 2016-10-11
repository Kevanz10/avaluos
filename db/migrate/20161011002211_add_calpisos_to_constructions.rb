class AddCalpisosToConstructions < ActiveRecord::Migration
  def change
  	add_column :constructions, :episos, :string
  	add_column :constructions, :emuros, :string
  	add_column :constructions, :etechos, :string
  	add_column :constructions, :emadera, :string
  	add_column :constructions, :emetal, :string
  	add_column :constructions, :ebanos, :string
  	add_column :constructions, :ecocina, :string
  end
end
