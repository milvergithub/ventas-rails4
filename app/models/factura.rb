class Factura < ActiveRecord::Base
  self.table_name = :facturas
  self.primary_key = :id_cliente
  belongs_to :usuario, :class_name => "Usuario", :foreign_key => "id_usuario"
  belongs_to :cliente, :class_name => "Cliente", :foreign_key => "id_cliente"
end