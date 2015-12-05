class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :dni
      t.string :password
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :movil
      t.string :direccion
      t.string :email

      t.timestamps
    end
  end
end
