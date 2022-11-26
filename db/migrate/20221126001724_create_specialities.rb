class CreateSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :specialities do |t|
      t.references :locations, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end
