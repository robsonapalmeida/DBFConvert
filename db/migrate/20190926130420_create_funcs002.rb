class CreateFuncs002 < ActiveRecord::Migration[5.2]
  def change
 
    create_table :funcs002 do |t|
      t.column "codfun", :string, :limit => 6
      t.column "nome", :string, :limit => 40
      t.column "sit", :boolean
      t.column "dtadm", :date
      t.column "cpf", :string, :limit => 14
      t.column "numrg", :string, :limit => 20
      t.column "pis", :string, :limit => 11
    end
  end
end
