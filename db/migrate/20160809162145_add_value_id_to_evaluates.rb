class AddValueIdToEvaluates < ActiveRecord::Migration
  def change
  	add_column :evaluates , :value_id, :integer 
  end
end
