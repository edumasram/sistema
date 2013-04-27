class CustoProduto < ActiveRecord::Base
  attr_accessible :custo, :data, :produto_id, :nome
  belongs_to :produto
end
