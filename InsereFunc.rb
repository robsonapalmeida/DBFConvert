#HOW TO REINITIALIZE SEQUENCE ON POSTGRES #
 #ALTER SEQUENCE funcs002_id_seq RESTART
##

#-- INTERISTING WAY OF DELETING ALL RECORDS FROM A OBJECT(TABLE) USING rails c
    #         I made it with Func002 instead of Object.all
    # @object = Object.all

    # @object.each do |o|
    #   o.delete
    # end

#methodo correto de filtrar no console com like
#l e c abaixo sao apensa valores aleatorios para o filtro
#Func002.where("pis like ? AND cpf like?","%#{l}%","%#{c}%")

#files = Dir["/home/robson/DbfRead/F*.DBF"]

w = DBF::Table.new('FUNC_045.DBF')
i=0

w.each do
  rec = Func002.new
  rec.lj = 45
  rec.codfun =  w.record(i).attributes["CODFUN"]
  rec.nome =  w.record(i).attributes["NOME"]
  rec.sit =  w.record(i).attributes["SIT"]
  rec.dtadm =  w.record(i).attributes["DTADM"]
  rec.cpf =  w.record(i).attributes["CPF"]
  rec.numrg =  w.record(i).attributes["NUMRG"]
  rec.pis =  w.record(i).attributes["PIS"]
  if w.record(i).attributes["DTRES"] != false
    rec.dtres  = w.record(i).attributes["DTRES"] end
  rec.save!
  
  i = i+1
  
end