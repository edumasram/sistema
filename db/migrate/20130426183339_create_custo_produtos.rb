class CreateCustoProdutos < ActiveRecord::Migration
  def change
    create_table :custo_produtos do |t|
      t.decimal :custo, :precision => 8, :scale => 2
      t.integer :produto_id
      t.datetime :data

      t.timestamps
    end
  end
end
