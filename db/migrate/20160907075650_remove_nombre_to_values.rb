class RemoveNombreToValues < ActiveRecord::Migration
  def change
  	add_column :evaluates, :vtotal, :float
  end
end
