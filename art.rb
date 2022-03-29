rows=5
reversespace = rows-1
space=1
puts("Enter any ASCII Character")
str = gets.chomp

for  i in 1..rows
    for j in 1..reversespace
        print(" ");
    end
    
    print(str);
    
    for j in 2..i 
        if i==(rows+1)/2
            print(" "+str+"");
        else
            print("  ")
        end
    end
    
    print(str);
    
    puts(" ")
    reversespace = reversespace -1
end
puts(" ")  
 puts((str+" ")*rows);
for  i in 1..rows/2
    print(str);
    print("  "*rows)
     puts(str);
end
 puts((str+" ")*rows);
for  i in 1..rows/2
    print(str);
   for j in 0..i 
        print("    ")
    end
    puts(str);
end
puts(" ")  
 puts((str+"  ")*rows);
for  i in 1..rows
   
        print(" "*rows);
        print(str);
        print(" "*rows);
    
    puts(" ")
end
     