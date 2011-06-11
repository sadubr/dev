class CreateRevenders < ActiveRecord::Migration
  def self.up
    create_table :revenders do |t|
      t.string :nome
      t.string :cpf
      t.string :cnpj
      t.string :rua
      t.string :complemento
      t.string :numero
      t.references :client

      t.timestamps
    end
  end

  def self.down
    drop_table :revenders
  end
end
