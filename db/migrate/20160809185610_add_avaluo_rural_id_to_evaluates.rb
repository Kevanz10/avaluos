class AddAvaluoRuralIdToEvaluates < ActiveRecord::Migration
  def change
  	add_column :evaluates , :avaluo_rural_id, :integer
  end
end
