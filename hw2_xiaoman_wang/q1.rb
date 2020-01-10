str = %{Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.}

def countWord(str, word=nil)
  if !word.nil?
    freq = str.scan(Regexp.new(word))  #string -> Regexp obj; return an array of appears part
    freq.length				#[word, word,....]
  else
     word_list = str.split(' ') 	#string -> words[]
     hash = {}
     word_list.each do |w|
        w.gsub!(/\W/,'')		#get rid of the non word chars
        if hash.has_key?(w)             #update hash
	    times = hash[w]
            hash[w] = times + 1
        else
            hash[w] = 1
        end
     end
     hash
  end
end

=begin
puts "test, and"
puts countWord(str, 'and')
puts "test, nil"
puts countWord(str)
puts "test, en"
puts countWord(str, 'en')

puts countWord(%{three, three, three})
=end
