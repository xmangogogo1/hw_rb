#q8.  write a program to read this file and print out only the lines by ADVISOR

def reading
=begin
	puts "input the file name (in.txt):"
	STDOUT <<  Dir.pwd << "/"		#oputput the current dir when user input file name 
	fileName = Dir.pwd.to_s + "/" + gets 
	puts "open file #{fileName}"				
=end

	out = File.new("out.txt", "w")
	begin
	  File.open("in.txt", "r") do |file|
	    while line = file.gets
		if line =~ /ADVISOR/i
			out.puts line
			puts "reading line #{line}"
		end
	    end
	    puts "saved to out.txt, check it ~"
	
	rescue
	  puts "file open failed,try again."
          end
	end
	out.close
end




