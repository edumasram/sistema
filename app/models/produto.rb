class Produto < ActiveRecord::Base
  attr_accessible :cod_fornecedor, :estoque, :nome, :sku, :marca_id
  belongs_to :marca
  has_many :fornecedores
  has_many :custo_produtos
end
