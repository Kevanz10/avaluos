class RenameTitulationColumn < ActiveRecord::Migration
  def change
  	rename_column :titulations, :dirinmue, :claimant_address
  end
end
