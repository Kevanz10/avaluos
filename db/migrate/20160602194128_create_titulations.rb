class CreateTitulations < ActiveRecord::Migration
  def change
    create_table :titulations do |t|
      t.string :depart
      t.string :municipio
      t.string :barrio
      t.string :conjunto
      t.string :sector
      t.string :dirinmue
      t.string :matrinmo
      t.string :numescritura
      t.string :departescritura
      t.string :sematrinmo
      t.string :numnotaria
      t.string :ciuescritura
      t.string :fecha

      t.timestamps null: false
    end
  end
end
