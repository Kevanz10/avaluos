class AddRuralIdToTitulation < ActiveRecord::Migration
  def change
  	remove_column :constructions, :avaluo_rural_id
  	add_column :constructions , :rural_id, :integer

  	remove_column :evaluates, :avaluo_rural_id
  	add_column :evaluates , :rural_id, :integer

  	remove_column :neighborhoods, :avaluo_rural_id
  	add_column :neighborhoods , :rural_id, :integer

  	remove_column :properties, :avaluo_rural_id
  	add_column :properties , :rural_id, :integer

  	remove_column :titulations, :avaluo_rural_id
  	add_column :titulations , :rural_id, :integer

  	remove_column :values, :avaluo_rural_id
  	add_column :values , :rural_id, :integer

  end
end
