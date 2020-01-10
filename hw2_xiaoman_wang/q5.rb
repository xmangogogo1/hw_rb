#q5.rewrite question Question4, using class method and class instance variable to provide the same functionalities


class Compress
    @arr		#class instance variable
    @results		

    def self.arr= (array)
	@arr = array.split
    end	
   
    # class method of Compress class
    def self.getCompress
	words, indice = self.change 		 #in class method only can call class method
 
	@results =[]
	@results << words << indice
	
	puts @results
    end

    def self.change
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
#set the class instance variable
Compress.arr = "i love you but do you love me"

#call class method
Compress.getCompress
=end






