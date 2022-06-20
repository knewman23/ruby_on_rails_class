# frozen_string_literal: true
# To start irb console:
# irb

# To exit the console:
# exit

# String concat structure:
String1 + String2

String1 + " " + String2 + String3

# To find out what class the object belongs to:
Variable_name.class

1.class # This will return integer, signifying that 1 is of type integer

# To find out methods available to an object:

objectname.methods

# Some methods that can be used on objects:

objectname.nil?

objectname.empty?

objectname.length

objectname.reverse

# String interpolation (remember has to be within double quotes):
name = "Mashrur"
puts "My name is #{name}"

# **This will print out the value of name in the line "My name is...."

# To escape the evaluation of #{variablename} within a String, prepend with a \:
variablename = "test"
puts variablename.to_s
puts "\#{variablename}"

# To get input from the command line use the following method:
gets.chomp

# To assign the input to a variable so it can be referenced later on:
variablename = gets.chomp
puts variablename


# To add and display the value of 1 + 2:
puts 1 + 2

# Different operations:
1 + 2
1 * 2
1 / 2
1 - 2
1 % 2

# To indicate a number is a float instead of an integer include a . in the number:
# 20 is an integer, 20.0 is a float
# or
20.to_f

# Methods you can use:
object.odd?
22.odd?
object.even?
22.even?

# Comparisons:
a == b
1 == 2
3 == 3
5 < 2
2 <= 5
5 > 2
5 && 6
5 || 6

# Generate a random number between 0 and less than 10:
rand(10)

# To convert an string object to integer:
objectname.to_i

"5".to_i

# To convert an object to string:
objectname.to_s
5.to_s

# Structure of an if condition:
if condition
  # execute logic
end

# variant
if condition
  puts 1
  # execute logic
else
  puts 2
  # execute different logic
end

# variant
if true
  # execute logic
  puts 1
elsif false
  # execute logic 2
  puts 2
else
  # execute logic 3
  puts 3
end


# Method code samples:
def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
  first_number.to_f / second_number.to_f
end

def subtract(first_number, second_number)
  second_number.to_f - first_number.to_f
end

def mod(first_number, second_number)
  first_number.to_f % second_number.to_f
end


# Branching execution code sample:
puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) find remainder"
prompt = gets.chomp
puts "Enter in your first number"
first_number = gets.chomp
puts "Enter in your second number"
second_number = gets.chomp
if prompt == "1"
  puts "You have chosen to multiply #{first_number} with #{second_number}"
  result = multiply(first_number, second_number)
  puts result
elsif prompt == "2"
  puts "You have chosen to divide"
  result = divide(first_number, second_number)
  puts result
elsif prompt == "3"
  puts "You have chosen to subtract"
  result = subtract(first_number, second_number)
  puts result
elsif prompt == "4"
  puts "You have chosen to find the remainder"
  result = mod(first_number, second_number)
  puts result
else
  puts "You have made an invalid choice"
end


# Array, created by including elements within square brackets:
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# The index for an array starts with 0, so in the array above a[0] is 1
# Some methods you can use on arrays:
arrayname.empty?
arrayname.include?(itemname)
arrayname.reverse
arrayname.reverse! # use ! at the end to change the original array
arrayname.shuffle
arrayname.push(30) # will append new element 30 to the end array
arrayname << 25 # << known as shovel operator will also append new element to the end of the array
arrayname.unshift("someelement") # will add element "some element" to the beginning of the array
arrayname.pop # will remove the last element of the array and return 1
arrayname.uniq # will remove all the duplicates and display (will not change the original array)
arrayname.uniq! # will remove all the duplicates in the original array

# A range:

(0..25).to_a
# will create an array with elements from value 0 to 25

(0..99).to_a.shuffle!
# will create an array with elements from value 0 to 99 in random order

# To loop through an array named y using the .each method and print out the value of each element:
y.each { |i| puts i }
# In plain terms: For each element i in array y print the value of i

# To execute iteration through an array called names using a block:
names.each do |randomvariablename| # starts the do block
  puts "Hello #{randomvariablename}" # executes code for each element
end # ends the do block

# To capitalize (or use another method) on each element of array called names:
names.each { |randomvariablename| puts "Hello #{randomvariablename.capitalize}" }

# Using the select method to pickup all the odd numbers from an array y:
y.select { |number| number.odd? } # selects the value and returns it only if the condition is met

# To join the elements of an array named p:
p.join

# To join the elements of an array with space in between each element:
p.join(" ")

# To join the elements of an array with dash in between each element:
p.join("-")


# Hashes - Text with directions, references and code
# To create a hash called my_details include the elements within { }:

my_details = { "name" => "mashrur", "favcolor" => "red" }

# To access the value and notify me what favcolor is:
my_details["favcolor"]

# Alternate syntax to create key, value pairs in hash:
myhash = { a: 1, b: 2, c: 3, d: 4 }
# But this will create symbols a, b, c and d (not strings) as keys

# To access the value for key c above:
myhash[:c]

# To add a key, value pair to the hash above:
myhash[:d] = 7
myhash[:name] = "Mashrur"

# To delete a key, value pair simply delete the key:
myhash.delete(:d)

# To list the keys in a hash, followed by values of the hash:
myhash.keys
myhash.values

# To iterate through a hash using .each method and print out value:
myhash.each { |somekey, somevalue| puts somevalue }

# To iterate through a hash using .each method and print out both key and value in friendly format:
myhash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }

# To iterate through and delete a items from a hash based on a condition (in the condition below if the value is greater than 3:
myhash.each { |k, v| myhash.delete(k) if v > 3 }

# Use select method to display items only if value of the item is odd
myhash.select { |k, v| v.odd? }
