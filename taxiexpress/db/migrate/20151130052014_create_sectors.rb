class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :distrito_origen
      t.string :calle_origen
	  t.string :distrito_destino
      t.string :calle_destino
      t.float :costo_tarifa
      t.timestamps
    end
  end
end
