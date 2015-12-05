class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.time :horaservicio
      t.string :referencia
      t.references :sector
      t.references :cliente

      t.timestamps
    end
    add_index :servicios, :sector_id
    add_index :servicios, :cliente_id
  end
end
