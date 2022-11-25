class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.references :sede, null: false, foreign_key: true
      t.references :responsable, null: false, foreign_key: true
      t.references :tipo_especie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
