#q4.write a class for compressing a string. when you create an object of this class, you provide a string, then the object save the compressed result (no duplicate words) as the state of the  object. the compressed result will have two arrays:  an array for strings and an array for index.


class Compress
    attr_accessor :arr, :result
    def initialize(input)
	   @arr = input.split
        words, indice = self.change
	
        @result = []
        @result << words << indice
 
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

=begin
obj = Compress.new( "i love you but do you love me")
puts obj.result
=end







