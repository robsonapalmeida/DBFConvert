require 'dbf'
require 'sequel'

Book = Sequel.postgres
require 'dbf'

    table = DBF::Table.new('/home/robson/DbfRead/FUNC_002.DBF')
    eval(table.schema(:sequel, true)) # passing true to limit output to create_table() only

    table.each do |record|
      puts  record.CODFUN +record.NOME
    end
  end

  down do
    drop_table(:Func002s)
  end
end

#require 'active_record'

#class Tests < ActiveRecord::Base; end
#    table = DBF::Table.new('/home/robson/DbfRead/FUNC_002.DBF')
#    eval(table.schema)
   
#    funcs002.reset_column_information
#    table.each do |record|
#      funcs002.create(title: record.CODFUN, author: record.NOME)
#    end

# class CreateBooks < ActiveRecord::Migration[4.2]
#   def self.up

#    create_table "FUNCIONARIO", :force => true do |t|
#    t.column "CODFUN", :integer
#    t.column "NOME", :string, :limit => 60

#    t.column "CPF", :string
#     table = DBF::Table.new('FUNC_002.DBF')
#     eval(table.schema)

#     Book.reset_column_information
#     table.each do |record|
#       Book.create(title: record.CODFUN, author: record.NOME)
#     end
#   end

#   # def self.down
#   #   drop_table :books
#   # end
# end



# new

# class CreateMrosalesorder < ActiveRecord::Migration[5.2]
#     thepathname = '/home/robson/DbfRead/FUNC_002.DBF'
#     table = DBF::Table.new(thepathname)
#     table.records.each do |record|
#       mysalesorder = Mrosalesorder.create(record.attributes)
    
#       mymrocustomer = Mrocustomer.find(:first, :conditions => "CODFUN = '#{record.CODFUN}'")
     
#       if not mymrocustomer.nil?
#         mysalesorder.mrocustomer_id = mymrocustomer.id   
#         mysalesorder.save
#       end
#     end
# end
  #def self.down
  #  drop_table "mrosalesorders"
  #end


# class Book < ActiveRecord::Base; end

# class CreateBooks < ActiveRecord::Migration[5.2]
#   def self.up
#     table = DBF::Table.new('/home/robson/DbfRead/FUNC_002.DBF')
#     eval(table.schema)

#     Book.reset_column_information
#     table.each do |record|
#       Book.create(codfun: record.CODFUN, nome: record.NOME)
#     end
#   end

#   # def self.down
#   #   drop_table :books
#   # end
# end


#

