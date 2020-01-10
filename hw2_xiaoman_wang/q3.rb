#q3.when you create a object of this class, it will take a pair of chars as surrounding chars and any number of strings.  it will put the surrounding chars to each string. and safe the result in a string as the state of the object.then add an singleton method to this object, the method will reverse the order of the state  array

class Enclose
    attr_accessor :words, :l, :r, :newArr
    def initialize(left, right, *w)
       @l = left
       @r = right
       @words = w
    end

    def set(left, right, *w)
        @l = left
        @r = right
        @words = w
        
        @newArr = []
        words.each do |word|
             temp = l + word + r
             @newArr <<= temp
        end                  
        puts @newArr        

    end
 
=begin
    def result
        print l,r
        puts words.is_a?(Array) #true
    end
=end    
end


