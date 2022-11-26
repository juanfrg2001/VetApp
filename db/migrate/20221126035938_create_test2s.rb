class CreateTest2s < ActiveRecord::Migration[6.1]
  def change
    create_table :test2s do |t|
      t.references :location, null: false, foreign_key: true
      t.references :responsible, null: false, foreign_key: true
      t.references :species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
