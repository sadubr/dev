class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :name
      t.string :cnpj
      t.string :rua
      t.string :numero
      t.string :especialidade
      t.references :client

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end

