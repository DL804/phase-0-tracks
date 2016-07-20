def code_block
	puts "this is before the code block"
	yield("parameter1", "parameter2")
	puts "Did you see the code block?"
end

code_block{|x,y|puts "I am the code block #{x} and #{y}"}


# Array with each
colors = ["blue", "green", "yellow", "orange"]
colors.each {|x| puts "I put on a different shirt each day, today it's #{x}"}

colors.map! do |color|
	p color
	color.upcase
end

puts "After map call #{colors}"

# Hash example
cars = {
	"Year" => "2004",
	"Brand" => "Honda",
	"Model" => "S2000",
	"Convertible" => "Yes" 
}

puts cars
puts "This is a #{cars["Year"]} car"

#Release 3

array = [1,2,3,4,5,6,7,8,9,10]
array.keep_if {|num| num < 5}
p "These numbers are less than 5 and array was modified #{array}"

array = [1,2,3,4,5,6,7,8,9,10]
modified_array = array.select {|num| num <5}
p "These numbers are less than 5 but original array was no modified #{modified_array}"
p "This is the original array #{array}"

hash = {
	"firstnumber" => 2,
	"secondnumber" => 4,
	"thirdnumber" => 6,
	"fourthnumber" => 8
}

hash.keep_if {|key, value| value < 5}
p "Remaining values in the hash less than 5 #{hash}"

puts 


hash = {
	"firstnumber" => 2,
	"secondnumber" => 4,
	"thirdnumber" => 6,
	"fourthnumber" => 8
}

modified_hash = hash.select{|key, value| value <5}
p "This is the original hash #{hash}"
p "This is the modified hash less than 5#{modified_hash}"



