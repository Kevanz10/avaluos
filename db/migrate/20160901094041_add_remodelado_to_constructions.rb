class AddRemodeladoToConstructions < ActiveRecord::Migration
  def change
  	add_column :constructions, :remodelado, :string
  	add_column :constructions, :conservar, :string
  end
end
