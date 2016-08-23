class RenameAvaluoRuralsToRurals < ActiveRecord::Migration
  def change
  	rename_table :avaluo_rurals, :rurals
  end
end
