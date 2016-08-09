class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :actualidad
      t.string :comportamiento
      t.string :tiempo
      t.string :valoruvr
      t.string :avaluouvr
      t.string :vasegurable
      t.string :vterreno
      t.string :iterreno
      t.string :vconstruccion
      t.string :iconstruccion
      t.string :garantia
      t.string :observacion
      t.string :danexo
      t.string :odireccion
      t.string :avaluo_rural_id

      t.timestamps null: false
    end
  end
end
