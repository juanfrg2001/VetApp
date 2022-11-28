class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.references :medical, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.string :horario
      t.string :fecha

      t.timestamps
    end
  end
end
