#q6.re-open the class Hash, re-implement the marge methods. if no block is given, it merge two hashes, if there is duplicate key, the value of the "other_hash"will be used. if a block is given, the value for the duplicate key is determined by calling the block with the duplicate key, the value in first hash (val1), and the value in second hash (val2)

  

class Hash
  
    def merge(other)
		result = {}
		result.replace(self)

    	other.keys.each do |k|
			if result.has_key?(k)		#if have key as the other hash, replace the value
					if block_given?			
		     			result[k] = yield(k, result[k], other[k])
					else
		     			newValue = other[k]
                     	result[k] = newValue
	   				end

			else				#if do not have this key, add into the result hash
		 			result[k] = other[k]
	    	end
		end

		puts result
    end
	
end

=begin
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge(h2)                                 #=> {"a"=>100, "b"=>254, "c"=>300}
h1.merge(h2){|key, val1, val2| val2 - val1}  #=> {"a"=>100, "b"=>54,  "c"=>300}
puts h1                                           #=> {"a"=>100, "b"=>200}

=end