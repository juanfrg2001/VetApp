class CreateMedicos < ActiveRecord::Migration[6.1]
  def change
    create_table :medicos do |t|
      t.references :especialidad, null: false, foreign_key: true
      t.string :nombre
      t.string :telefono
      t.string :direccion_residencia

      t.timestamps
    end
  end
end
