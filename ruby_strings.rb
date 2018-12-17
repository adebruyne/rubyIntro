#String Concatenation
sentence = "My name is Bruce"
p sentence

# With single quotes, you wont be able to do string interpolation


#String concatenation
first_name="M."
last_name="Ward"
puts first_name + " " + last_name

#String Interpolation- MUST USE DOUBLE QUOTES
puts "My first name is  #{first_name} and my last name is #{last_name}."

#irb in the terminal turns it into a ruby repl

#METHODS
#.class will give you the type
10.class

#Seeing methods attached firstname.methods ----this will print out the full list of methods attached to it
#method chaining
10.to_s.class

#COMMON METHODS

#.length
#.reverse
#.capitalize
#.empty?

sentence = "Welcome to the jungle"
p sentence.sub("the jungle", "utopia")


#ESCAPING
phrase = 'Mik asked \'Oy, where are my muffins!?\''
p phrase

# INPUT FROM THE USER
puts "What is your first name?"
firstname= gets.chomp
puts "Thanks, you said your first name is #{firstname}."

puts "Enter a number to mulitiply by "
input = gets.chomp
puts input.to_i * 2


