class CreateFornecedorCustos < ActiveRecord::Migration
  def change
    create_table :fornecedor_custos do |t|
      t.integer :produto_id
      t.decimal :preco, :precision => 8, :scale => 2
      t.datetime :data
      t.text :obs

      t.timestamps
    end
  end
end
