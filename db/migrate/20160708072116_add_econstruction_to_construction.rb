class AddEconstructionToConstruction < ActiveRecord::Migration
  def change
    add_column :constructions, :econstruction, :string
  end
end
