class AddCctypeToAvaluoRural < ActiveRecord::Migration
  def change
  	add_column :avaluo_rurals, :cctype, :string
  end
end
