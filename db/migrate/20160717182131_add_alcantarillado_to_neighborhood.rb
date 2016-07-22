class AddAlcantarilladoToNeighborhood < ActiveRecord::Migration
  def change
  	remove_column :neighborhoods, :alcantarillado
  	remove_column :neighborhoods, :acueducto
  	remove_column :neighborhoods, :gas
  	remove_column :neighborhoods, :acueducto
  	remove_column :neighborhoods, :telefono
  	remove_column :neighborhoods, :engeria
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
