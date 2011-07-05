class CreateProdutos < ActiveRecord::Migration
  def self.up
    create_table :produtos do |t|
      t.string :nome,  :limit => 70
      t.text :descricao
      t.integer :unidade
      t.integer :precoCusto
      t.integer :precoVenda
      t.integer :maoObra
      t.integer :total
      t.integer :estoque
      t.integer :estoqueMinimo
      t.integer :codigoBarras
      t.boolean :ativo
      t.integer :grupoProduto_id
      t.integer :fornecedor_id

      t.timestamps
    end
    add_index :produtos, :nome
    add_index :produtos, :grupoProduto_id
    add_index :produtos, :fornecedor_id
  end

  def self.down
    drop_table :produtos
  end
end
