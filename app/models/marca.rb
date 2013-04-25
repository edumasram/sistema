class Marca < ActiveRecord::Base
  attr_accessible :descricao, :nome, :fornecedor_id
  has_many :produtos
  belongs_to :fornecedor
end
