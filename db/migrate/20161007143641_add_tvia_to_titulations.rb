class AddTviaToTitulations < ActiveRecord::Migration
  def change
  	add_column :titulations, :tvia, :string
  	add_column :titulations, :via, :string
  	add_column :titulations, :adicional, :string
  	add_column :titulations, :num, :string
  	add_column :titulations, :compvia, :string
  	add_column :titulations, :placa, :string
  	add_column :titulations, :compnum, :string
  end
end
