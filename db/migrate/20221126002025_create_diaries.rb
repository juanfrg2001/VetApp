class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.references :medicals, null: false, foreign_key: true
      t.references :pacients, null: false, foreign_key: true
      t.string :horario
      t.string :fecha

      t.timestamps
    end
  end
end
