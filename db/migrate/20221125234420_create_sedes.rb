class CreateSedes < ActiveRecord::Migration[6.1]
  def change
    create_table :sedes do |t|
      t.string :nombre
      t.string :localidad

      t.timestamps
    end
  end
end
