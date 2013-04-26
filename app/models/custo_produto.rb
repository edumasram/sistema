class CustoProduto < ActiveRecord::Base
  attr_accessible :custo, :data, :produto_id
  belongs_to :produto
end
