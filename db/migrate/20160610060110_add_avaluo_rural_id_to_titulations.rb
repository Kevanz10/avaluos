class AddAvaluoRuralIdToTitulations < ActiveRecord::Migration
  def change
    add_column :titulations, :avaluo_rural_id, :integer
  end
end
