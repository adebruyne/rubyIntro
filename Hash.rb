#hash a.k.a. dictionary

sample_hash = { 'name' => 'Stinker', 'favcolor' => 'green'}

# grabs the value for the key in square brackets
p sample_hash['favcolor']
# grabs the keys
p sample_hash.keys
# grabs the values
p sample_hash.values

#doing a for loop
sample_hash.each do |key, value|
    puts "The class for key is #{key.class} and the value
    is #{value.class}."
end

#selecting
 p sample_hash.select{|k,v| v.is_a?(String)}
