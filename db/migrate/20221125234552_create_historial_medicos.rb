class CreateHistorialMedicos < ActiveRecord::Migration[6.1]
  def change
    create_table :historial_medicos do |t|
      t.references :agenda, null: false, foreign_key: true
      t.string :motivo_consulta
      t.string :fecha_consulta
      t.string :cdiagnostico
      t.string :tratamiento_seguir

      t.timestamps
    end
  end
end
