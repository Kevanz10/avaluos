class AddLatitudeAndLongitudeToAvaluoRural < ActiveRecord::Migration
  def change
    add_column :avaluo_rurals, :latitude, :float
    add_column :avaluo_rurals, :longitude, :float
  end
end
