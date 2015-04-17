class UsuarioRol < ActiveRecord::Base
  self.table_name = :UsuarioRol
  belongs_to :usuario, :class_name => "Usuario", :foreign_key => "id_usuario"
  belongs_to :role, :class_name => "Role", :foreign_key => "id_rol"
end