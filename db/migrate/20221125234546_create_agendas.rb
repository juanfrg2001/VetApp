class CreateAgendas < ActiveRecord::Migration[6.1]
  def change
    create_table :agendas do |t|
      t.references :medico, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true
      t.string :horario
      t.string :fecha

      t.timestamps
    end
  end
end
