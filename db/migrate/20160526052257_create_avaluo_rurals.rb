class CreateAvaluoRurals < ActiveRecord::Migration
  def change
    create_table :avaluo_rurals do |t|
      t.string :id_type
      t.string :document_number
      t.string :first_name
      t.string :last_name
      t.string :s_surname
      t.string :cellphone
      t.string :email
      t.text :claimant_address
      t.string :claimant_department
      t.string :claimant_city

      t.timestamps null: false
    end
  end
end
