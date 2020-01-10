require_relative 'q1'
require_relative 'q2'
require_relative 'q3'
require_relative 'q4'
require_relative 'q5'
require_relative 'q6'
require_relative 'q7'
require_relative 'q8'

#####################################################################################
#q1
#####################################################################################
str = %{Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.}

puts "==========================================\nq1\n=========================================="
puts "count 'and' in str: "
puts countWord(str, 'and')
puts
puts "count each word:"
puts countWord(str)
puts
puts "test - count 'en' in string:" 
puts countWord(str, 'en')
puts
puts "test - count words in empty string:" 
puts countWord("")
puts
puts "count three in \"three, three, three\": "
puts countWord(%{three, three, three})

puts
#####################################################################################
#q2
#####################################################################################
students = [

{:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789},

{:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 456734244},

{:firstname => "Marisa", :lastname => "lastnamemarisa",  :phonenumber => 443234567},

{:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 456734244}

]
puts "==========================================\nq2\n=========================================="
puts "test - search{firstname: ken}:"
search_students(students, firstname: "ken")
puts
puts "test - search{firstname: Kola}:"
search_students(students, firstname: "Kola")
puts
puts "test - search{birthday: 10/11}:"
search_students(students, birthday: "10/11")


#####################################################################################
#q3
#####################################################################################
puts "==========================================\nq3\n=========================================="
obj = Enclose.new("<", ">", "i", "love", "you")
obj.set("<", ">", "i", "love", "you", "very", "much")
puts

## add a singleton method for obj
#way1:
class << obj	#create an annonymous class for object obj which contains the singleton method
    def reverse
	puts self.newArr.reverse!   # must define this line in a method, otherwise the annonymous class will take self as the class type
    end
end

puts "call by the singleton method:"
obj.reverse


=begin
# way2:
def obj.reverse  
    self.newArr.reverse!
    puts self.newArr
end

obj.reverse
=end



puts

#####################################################################################
#q4
#####################################################################################
puts "==========================================\nq4\n=========================================="
obj2 = Compress.new( "i love you but do you love me")
puts obj2.result

puts

#####################################################################################
#q5
#####################################################################################
puts "==========================================\nq5\n=========================================="
#set the class instance variable
Compress.arr = "i love you but do you love me"

#call class method
Compress.getCompress

puts

#####################################################################################
#q6
#####################################################################################
puts "==========================================\nq6\n=========================================="
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge(h2)                                 #=> {"a"=>100, "b"=>254, "c"=>300}
h1.merge(h2){|key, val1, val2| val2 - val1}  #=> {"a"=>100, "b"=>54,  "c"=>300}
puts h1					     #=> {"a"=>100, "b"=>200}  

puts


#####################################################################################
#q7
#####################################################################################
puts "==========================================\nq7\n=========================================="


obj = Compress.new( "i love you but do you love me")

puts "original words array should be:"
obj.each
puts
puts "reversed words: "
puts obj.reverse_each
puts
puts "longest word is:"
puts obj.inject

puts
puts "concate all words into string:"
puts obj.inject2

puts


#####################################################################################
#q8
#####################################################################################
puts "==========================================\nq8\n=========================================="

reading


