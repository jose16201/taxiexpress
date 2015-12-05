class Tarifa < ActiveRecord::Base 
  attr_accessible :costo_tarifa, :sector_id
  belongs_to :sector
  has_many :servicio
end
