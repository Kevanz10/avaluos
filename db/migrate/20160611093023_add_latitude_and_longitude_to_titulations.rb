class AddLatitudeAndLongitudeToTitulations < ActiveRecord::Migration
  def change
    add_column :titulations, :latitude, :float
    add_column :titulations, :longitude, :float
  end
end
