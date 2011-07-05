class CreateGrupoProdutos < ActiveRecord::Migration
  def self.up
    create_table :grupo_produtos do |t|
      t.string :nome,  :limit => 170

      t.timestamps
    end
    add_index :grupo_produtos, :nome
  end

  def self.down
    drop_table :grupo_produtos
  end
end
