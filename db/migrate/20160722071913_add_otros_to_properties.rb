class AddOtrosToProperties < ActiveRecord::Migration
  def change
  	remove_column :properties, :epresion
  	add_column :properties, :otro, :string 
  	add_column :properties, :golfito, :string 

  end
end
