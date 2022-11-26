class CreateMedicals < ActiveRecord::Migration[6.1]
  def change
    create_table :medicals do |t|
      t.references :specialities, null: false, foreign_key: true
      t.string :nombre
      t.string :telefono
      t.string :direccion_residencia

      t.timestamps
    end
  end
end
