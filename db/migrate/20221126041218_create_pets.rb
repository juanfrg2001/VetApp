class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.references :location, null: false, foreign_key: true
      t.references :responsible, null: false, foreign_key: true
      t.references :species, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end
