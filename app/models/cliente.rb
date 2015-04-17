class Cliente < ActiveRecord::Base
  validates :nombre, presence:true
  validates :ape_pat, presence:true
  validates :ape_mat, presence:true
  self.table_name = :clientes
  self.primary_key= :id_cliente
  has_many :facturas, :class_name => "Factura", foreign_key: "id_cliente"
end