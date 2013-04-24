class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :nome
      t.text :descricao
      t.references :fornecedor

      t.timestamps
    end
    add_index :marcas, :fornecedor_id
  end
end
