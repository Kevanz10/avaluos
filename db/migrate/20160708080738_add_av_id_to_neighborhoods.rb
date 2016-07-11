class AddAvIdToNeighborhoods < ActiveRecord::Migration
  def change
  	add_column :neighborhoods, :avaluo_rural_id, :integer
  end
end
