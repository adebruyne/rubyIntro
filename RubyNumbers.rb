puts 1+2

puts "-" * 20

x = 5
y = 10
puts y/x

puts "-" * 20
 puts x.to_f

 puts "-" * 20
#generate a random number before 0 and 10, twenty times
20.times { puts rand(10)}

puts "Simple Calculator"
25.times {print "-"}
puts "Enter first number"
num1 = gets.chomp
puts "Enter the second number"
num2 = gets.chomp
puts "The first number multiplied by the second number is #{num1.to_i * num2.to_i}."


#creates a range
 x = 1..100
 
 x.to_a.shuffle

 # to_a method creates an array

 # shuffle , shuffles the array

 #the ! operator mutates the caller

 #.push adds it to the end
 #.pop pops it off the end
#.join turns each item in an array into a long string
#.join("-") would attach each item with a -
#.split turns it into an array

#%W() turns each element into an array

#.each do |food|
# z.each { |food| print food + " "}
#z.select ---tests for boolean