class CreateResponsibles < ActiveRecord::Migration[6.1]
  def change
    create_table :responsibles do |t|
      t.string :nombre
      t.string :cedula
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
