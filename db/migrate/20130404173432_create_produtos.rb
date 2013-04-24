class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :sku
      t.integer :estoque
      t.string :cod_fornecedor

      t.timestamps
    end
  end
end
