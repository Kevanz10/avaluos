class AddAndRemoveAvaluoRuralIdToValue < ActiveRecord::Migration
  def change
  	remove_column :values, :avaluo_rural_id, :string
  	add_column :values, :avaluo_rural_id, :integer 
  end
end
