require 'dbf'
table = DBF::Table.new '/home/robson/DbfRead/FUNC_002.DBF'
    puts
    puts "Database: #{filename}"
    puts "Type: (#{table.version}) #{table.version_description}"
    puts "Memo File: #{table.has_memo_file? ? 'true' : 'false'}"
    puts "Records: #{table.record_count}"

    puts "\nFields:"
    puts 'Name             Type       Length     Decimal'
    puts '-' * 78
    table.columns.each do |f|
      puts format('%-16s %-10s %-10s %-10s', f.name, f.type, f.length, f.decimal)
    end