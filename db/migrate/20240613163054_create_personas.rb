class CreatePersonas < ActiveRecord::Migration[7.1]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nacimiento
      t.integer :nro_dni

      t.timestamps
    end
  end
end
