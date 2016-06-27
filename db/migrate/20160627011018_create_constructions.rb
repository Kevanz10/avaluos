class CreateConstructions < ActiveRecord::Migration
  def change
    create_table :constructions do |t|
      t.string :estado
      t.integer :npisos
      t.integer :sotanos
      t.float :años
      t.string :vetustez
      t.string :pisos
      t.string :estructura
      t.string :sismoresistente
      t.string :cubierta
      t.string :fachada
      t.string :tfachada
      t.string :reforzada
      t.string :daños
      t.string :material
      t.string :iluminar
      t.string :testructura
      t.string :ventilar
      t.string :planta
      t.string :altura
      t.integer :avaluo_rural_id
      t.string :habitacion
      t.string :ehabitacion
      t.string :shabitacion
      t.string :closet
      t.string :sala
      t.string :comedor
      t.string :pribanos
      t.string :socibanos
      t.string :serbanos
      t.string :cocina
      t.string :estudio
      t.string :balcon
      t.string :terraza
      t.string :patiointer
      t.string :jardin
      t.string :zonaropa
      t.string :zonaverde
      t.string :locales
      t.string :oficina
      t.string :bodega
      t.text :estado
      t.text :calidad
      t.string :tgaraje
      t.string :observacion
      t.string :privado
      t.string :exclusivo

      t.timestamps null: false
    end
  end
end
