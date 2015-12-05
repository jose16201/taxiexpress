class CreateTarifas < ActiveRecord::Migration
  def change
    create_table :tarifas do |t|
      t.float :costo_tarifa
      t.references :sector

      t.timestamps
    end
    add_index :tarifas, :sector_id
  end
end
