class Role < ActiveRecord::Base
  self.table_name = :Role
  self.primary_key= :id_rol
  has_many :usuario_rols, :class_name => "UsuarioRol", :foreign_key => "id_rol"
end