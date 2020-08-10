require_relative 'near_earth_objects'
require_relative 'format'

puts "________________________________________________________________________________________________________________________________"
puts "Welcome to NEO. Here you will find information about how many meteors, astroids, comets pass by the earth every day. \nEnter a date below to get a list of the objects that have passed by the earth on that day."
puts "Please enter a date in the following format YYYY-MM-DD."
print ">>"

date = gets.chomp

all_astroids_on_date = NearEarthObjects.find_neos_by_date(date)

Format.format_with(all_astroids_on_date)
