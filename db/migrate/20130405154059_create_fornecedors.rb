class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :telefone

      t.timestamps
    end
  end
end
