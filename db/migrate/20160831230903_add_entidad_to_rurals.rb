class AddEntidadToRurals < ActiveRecord::Migration
  def change
  	add_column :rurals, :entidad, :string
  	add_column :rurals, :segmento, :string
  	add_column :rurals, :objecto, :string
  	add_column :rurals, :motivo, :string
  	add_column :rurals, :credito, :string
  end
end
