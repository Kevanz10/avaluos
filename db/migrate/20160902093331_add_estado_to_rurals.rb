class AddEstadoToRurals < ActiveRecord::Migration
  def change
  	add_column :rurals, :estado, :string
  end
end
