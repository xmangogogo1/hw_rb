students = [

{:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789},

{:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 456734244},

{:firstname => "Marisa", :lastname => "lastnamemarisa",  :phonenumber => 443234567},

{:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 456734244}

]


def search_students(array, **target)
    found = false
    if !array.nil?
         p = false			#set a flag for print the title line
         array.each do |pair|
             print "First Name\tLast Name\tPhone# \n" unless p
             p = true			#unset the flag
             
             
             pair.each do |k,v|		#get each hash pair which contains thress k-v pairs  from the array
                target.each do |tarKey, tarVal|		#get the key, value pairs from the target
                  if !pair.has_key?(tarKey)
                      puts "no key found" 
                      return  
                  elsif k == tarKey && (v =~ Regexp.new(tarVal) || v.downcase == tarVal)   #if the value equals or matches
		                  found = true
                      print pair[:firstname], "\t\t",pair[:lastname],"\t",pair[:phonenumber],"\n"
                  end
                end
             end
            end    
         end

         if !found
                puts "no matches found" 
    end
end
=begin
search_students(students, firstname: "ken")
=end