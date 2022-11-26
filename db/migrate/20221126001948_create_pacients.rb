class CreatePacients < ActiveRecord::Migration[6.1]
  def change
    create_table :pacients do |t|
      t.references :locations, null: false, foreign_key: true
      t.references :responsibles, null: false, foreign_key: true
      t.references :species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
