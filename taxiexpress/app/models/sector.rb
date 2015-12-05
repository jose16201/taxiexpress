class Sector < ActiveRecord::Base
  attr_accessible :calle_destino, :calle_origen, :distrito_destino, :distrito_origen, :costo_tarifa

  def ruta
    "#{distrito_origen} - #{distrito_destino}"
  end

  def tarifa
    "#{distrito_origen} - #{distrito_destino} => S/. #{costo_tarifa} "
  end
end
