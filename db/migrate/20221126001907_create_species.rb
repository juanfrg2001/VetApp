class CreateSpecies < ActiveRecord::Migration[6.1]
  def change
    create_table :species do |t|
      t.string :raza
      t.string :genero
      t.string :edad
      t.string :esterilizado

      t.timestamps
    end
  end
end
