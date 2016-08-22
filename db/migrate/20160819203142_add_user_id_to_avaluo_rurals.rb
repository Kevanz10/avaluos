class AddUserIdToAvaluoRurals < ActiveRecord::Migration
  def change
    add_column :avaluo_rurals, :user_id, :integer
  end
end
