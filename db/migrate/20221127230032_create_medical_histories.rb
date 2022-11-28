class CreateMedicalHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_histories do |t|
      t.references :diary, null: false, foreign_key: true
      t.string :motivo_consulta
      t.string :fecha_consulta
      t.string :cdiagnostico
      t.string :tratamiento_seguir

      t.timestamps
    end
  end
end
