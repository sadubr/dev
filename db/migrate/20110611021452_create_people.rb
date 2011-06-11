class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :nome
      t.string :sexo
      t.string :cpf
      t.references :client

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
