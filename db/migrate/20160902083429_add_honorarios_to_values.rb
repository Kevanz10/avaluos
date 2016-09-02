class AddHonorariosToValues < ActiveRecord::Migration
  def change
  	add_column :values, :vrhonorarios, :string
  	add_column :values, :Gtraslado, :string
  	add_column :values, :subhonorarios, :string
  	add_column :values, :ihonorarios, :string
  	add_column :values, :total, :string
  end
end
