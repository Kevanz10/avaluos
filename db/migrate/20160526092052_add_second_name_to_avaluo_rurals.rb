class AddSecondNameToAvaluoRurals < ActiveRecord::Migration
  def change
  	add_column :avaluo_rurals, :second_name, :string
  end
end
