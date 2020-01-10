#q7.Define each() method in your class of question 4, it will return each words in the original string by using the compressed array and index.then include Enumerable into your class and create examples of using reverse_each( ), inject( ) (to find the longest word, or to concatenate all word into string) 
require_relative 'q4'

class Compress
    include Enumerable  

     def each()
          @arr = []
          @result[1].each {|i| @arr <<= @result[0][i] }
    end 

    def reverse_each
          arr = []
          index = @result[1].length-1
          while index >= 0
              arr <<= @arr[index]
              index -=1
          end
          arr
    end
   
    def inject
        longest = @arr[0]
        @arr.each do |w|
        longest = w.length > longest.length ? w : longest
    end
    longest
  
    end
 
    def inject2
        str = ""
        @arr.each {|w| str << w << " "}
        str
    end
end


=begin
class Compress
    include Enumerable		
    attr_accessor :arr, :result 

    def initialize(input)
	@arr = input.split
   	 words, indice = self.change
	
   	 @result = []
   	 @result << words << indice
    end

    def each()
	@arr = []
	@result[1].each {|i| @arr <<= @result[0][i] }
	puts "get the original arr:\n #{@arr}"
    end	

    def reverse_each
	arr = []
	index = @result[1].length-1
	while index >= 0
		arr <<= @arr[index]
		index -=1
	end
	arr
    end
   
    def inject
   	longest = @arr[0]
	@arr.each do |w|
		longest = w.length > longest.length ? w	: longest
	end
	longest
	
    end
 
    def inject2
	str = ""
	@arr.each {|w| str << w << " "}
  	str
    end

    def change
 	hash = {}
        index = 0			#the index of each key in Hash

        # prepare keys, value is a list of the indice the key occur at
        @arr.each do |w|
             if !hash.has_key?(w)	  #add the word as key if it haven't appeared before
		hash[w] = index
	  	index += 1
	     end 
        end

        #prepare the indice list for each word from input
        indice = []
        @arr.each do |w|
 	     indice << hash[w] 		  #add the index of this key into indice list 		
	end       
 	
        return  hash.keys, indice
    end
end


obj = Compress.new( "i love you but do you love me")

obj.each()

puts obj.reverse_each
puts
puts "longest word is:"
puts obj.inject

puts
puts "concate all words into string:"
puts obj.inject2
=end



