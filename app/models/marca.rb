class Marca < ActiveRecord::Base
  attr_accessible :descricao, :nome
  has_many :produtos
end
