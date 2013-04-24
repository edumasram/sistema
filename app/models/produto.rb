class Produto < ActiveRecord::Base
  attr_accessible :cod_fornecedor, :estoque, :nome, :sku
end
