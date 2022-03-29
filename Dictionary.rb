class Dictionary
    def add(dictionary)
        puts "Enter Key to add"
        key = gets.chomp
        puts "Enter Value"
        value = gets.chomp
        dictionary.store(key,value)
        puts "Added Successfully !!!"
    end
    def update(dictionary)
        puts "Enter Key to update"
        key = gets.chomp
        
        rs = dictionary[key].to_s
        if rs.length ==0
            puts "Key not found"
        else
            puts "Enter new Value"
            value = gets.chomp
            dictionary.store(key,value)
            puts "Updated Successfully !!!"
        end
    end
    def delete(dictionary)
        puts "Enter Key to delete"
        key1 = gets.chomp
        rs = dictionary[key1].to_s
        if rs.length ==0
            puts "Key not found"
        else
            dictionary.delete(key1)
            puts "Deleted Successfully !!!"
        end
    end
    def search(dictionary)
        puts "Enter Key to Search"
        key1 = gets.chomp
        rs = dictionary[key1].to_s
        if rs.length ==0
            puts "Key not found"
        else
            print "value of ",key1, " : ", rs
        end
    end
    def view(dictionary)
        puts dictionary
    end
    def menu()
        puts ""
        puts "1. View"
        puts "2. Add"
        puts "3. Update"
        puts "4. Delete"
        puts "5. Search"
        puts "Please choose any option"
    end
end
dictionary = {"key1" => "value1", "key2" => "value2"}
dc = Dictionary.new
while 1==1
    dc.menu()
    option = gets.chomp.to_i
    case option
    when 1
        dc.view(dictionary)
    when 2
        dc.add(dictionary)
    when 3
        dc.update(dictionary)
    when 4
        dc.delete(dictionary)
     when 5
       dc.search(dictionary)
    else        
        puts "Invalid option"
    end
end