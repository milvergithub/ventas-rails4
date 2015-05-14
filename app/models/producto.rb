class Producto < ActiveRecord::Base
  self.table_name = "productos"
  self.primary_key= "id_producto"
  has_many :items, :class_name => "Item", :foreign_key => "id_producto"
end