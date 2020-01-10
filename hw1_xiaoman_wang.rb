#! /usr/bin/ruby
#HW1 -- Xiaoman Wang
########################################################################
#1.write a method that can duplicate a string n times:
########################################################################
def str_dup(n, str)
  n.times { print str, " "}
end

str_dup(5,"click")
#str_dup(3,"win")
#str_dup(0,"->")
puts

########################################################################
#2.write a method that calculate sum of squares from 1 to n:
########################################################################
def sum_sq(n)
  cnt = 1
  sum = 0
  while cnt <= n
    sum += cnt * cnt
    cnt += 1
  end 
  puts sum
end

sum_sq(7)
#sum_sq(1)
#sum_sq(0)




########################################################################
#3.write method say_hello:
########################################################################
def say_hello(n)
  print "hello ", n,"\n"
end

say_hello("yuan")
#say_hello('test')
puts

########################################################################
#4.write a class called MyGreeter
########################################################################
class MyGreeter
  @list = [""]

  def initialize(l)
   # @list = Array.new(l)
     @list = l
  end

  def say_hello()
    @list.each {|name| print "hello ", name, "\n"}
  end
  
  def say_goodbye
    @list.each do
       |n| print "bye ", n, "\n"
    end
  end
end


obj = MyGreeter.new(["John","Ken", "Ivy"])
obj.say_hello
puts
obj.say_goodbye

