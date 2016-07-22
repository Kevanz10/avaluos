class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :tinmueble
      t.text :uinmueble
      t.text :clainmueble
      t.text :tvivienda
      t.string :phorizontal
      t.string :conjunto
      t.string :nedificios
      t.string :upisos
      t.string :ubicacion
      t.string :tunidades
      t.string :coeficiente
      t.string :porteria
      t.string :juegos
      t.string :citofono
      t.string :cmultiple
      t.string :scomunal
      t.string :bicicletero
      t.string :beyectora
      t.string :shutbasuras
      t.string :piscina
      t.string :airecentral
      t.string :econstante
      t.string :tagua
      t.string :csquash
      t.string :epresion
      t.string :chouse
      t.string :zverdes
      t.string :pelectrica
      t.string :gvisitantes
      t.string :gimnasio
      t.string :ascensor
      t.integer :avaluo_rural_id

      t.timestamps null: false
    end
  end
end
