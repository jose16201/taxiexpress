class Cliente < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :dni, :edad, :email, :movil, :nombre, :password
  has_many :servicio

  def fullname
    "#{nombre} #{apellido}"
  end
end
