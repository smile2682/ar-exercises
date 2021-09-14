require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Please enter your store name >> "
name = gets.chomp

user_store = Store.create(name: name)

user_store.errors.full_messages.each do |error|
  puts "Error: #{error}"
# the custom error msg is not shown, since the _appeal is null instead of false? how to fix?
end