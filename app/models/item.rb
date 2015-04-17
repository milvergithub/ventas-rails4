class Item < ActiveRecord::Base
  self.table_name= :items
  belongs_to :factura, :class_name => "Factura", :foreign_key => "id_factura"
  belongs_to :producto, :class_name => "Producto", :foreign_key => "id_producto"
end