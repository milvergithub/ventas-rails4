class Usuario < ActiveRecord::Base
  self.table_name="usuarios"
  self.primary_key="id_usuario"
  has_many :facturas, class_name: "Factura", foreign_key: "id_usuario"
  has_many :usuario_rols, class_name: "UsuarioRol", foreign_key: "id_usuario"
end