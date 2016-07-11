class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.text :alcantarillado
      t.string :estrato
      t.string :evias
      t.text :acueducto
      t.string :blegal
      t.string :vpavimentadas
      t.text :gas
      t.string :toposector
      t.string :svias
      t.text :telefono
      t.string :transporte
      t.string :condiciones
      t.text :engeria
      t.string :andenes
      t.string :usector
      t.string :parques
      t.string :aire
      t.string :paradero
      t.string :basura
      t.string :alumbrado
      t.string :inseguridad
      t.string :zverdes
      t.string :ruido
      t.string :arborizacion
      t.string :saguas
      t.string :alamedas
      t.string :otro
      t.string :cicloruta
      t.string :pvalorizacion

      t.timestamps null: false
    end
  end
end
