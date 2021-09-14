require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# @ is not neccessay, but a convention?
@total_revenue = Store.sum(:annual_revenue)
puts "total revenue : #{@total_revenue}"

@avg_revenue = Store.average(:annual_revenue)
puts "average revenue : #{@avg_revenue}"

@num_over1M = Store.where('annual_revenue >= ?', 1000000).count
puts "there are #{@num_over1M} of stores that are generating $1M or more in annual sales"