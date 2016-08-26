class AddAlcantarilladoToNeighborhood < ActiveRecord::Migration
  def change
  	add_column :neighborhoods, :alcantasector , :string
  	add_column :neighborhoods, :alcantapredio , :string
   	add_column :neighborhoods, :acueducsector , :string
  	add_column :neighborhoods, :acueducpredio , :string
  	add_column :neighborhoods, :gassector , :string
  	add_column :neighborhoods, :gaspredio , :string
  	add_column :neighborhoods, :telsector , :string
  	add_column :neighborhoods, :telpredio , :string
  	add_column :neighborhoods, :energiasector , :string
  	add_column :neighborhoods, :energiapredio , :string
  end
end
