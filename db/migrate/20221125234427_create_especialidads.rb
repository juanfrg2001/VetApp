class CreateEspecialidads < ActiveRecord::Migration[6.1]
  def change
    create_table :especialidads do |t|
      t.references :sede, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end
