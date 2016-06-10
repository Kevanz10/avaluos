class RemoveIdtypeToAvaluoRural < ActiveRecord::Migration
  def change
  	remove_column :avaluo_rurals, :id_type
  end
end
