class AddCobraToConstruction < ActiveRecord::Migration
  def change
  	 add_column :constructions, :cobra, :string
  end
end
