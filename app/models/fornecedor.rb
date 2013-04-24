class Fornecedor < ActiveRecord::Base
  attr_accessible :nome, :telefone
  has_many :produtos
  has_many :marcas
end
