dictionary = {"key1" => "value1", "key2" => "value2"}
while 1==1
 puts ""
    puts "1. Search"
    puts "2. Add"
    puts "3. Update"
    puts "4. Delete"
    puts "5. View"
    puts "Please choose any option"
    option = gets.chomp.to_i
    case option
    when 1
        puts "Enter Key to Search"
        key1 = gets.chomp
        #rs = hash.key(key1)
        #puts rs
    when 2
        puts "Enter Key to add"
        key = gets.chomp
        puts "Enter Value"
        value = gets.chomp
        dictionary.store(key,value)
    when 3
         puts "Enter Key to update"
        key = gets.chomp
        puts "Enter new Value"
        value = gets.chomp
        dictionary.store(key,value)
    when 4
        puts "Enter Key to delete"
        key = gets.chomp
     dictionary.delete(key)
     when 5
    puts dictionary
    else
     puts "Invalid option"
    end
end