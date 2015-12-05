class Servicio < ActiveRecord::Base
  attr_accessible :horaservicio, :referencia, :sector_id, :cliente_id
  
  belongs_to :sector
  belongs_to :cliente
end
