class CreateEvaluates < ActiveRecord::Migration
  def change
    create_table :evaluates do |t|
      t.string :descripcion
      t.string :nombre
      t.string :unidad
      t.string :area
      t.string :unitario

      t.timestamps null: false
    end
  end
end
