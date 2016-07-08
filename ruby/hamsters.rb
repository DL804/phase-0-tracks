puts "What is the hamster's name?"
hamster_name = gets.chomp.capitalize
puts "From 1 to 10, how loud is the hamster?"
hamster_volume = gets.chomp.to_i
puts "What is the color of the hamster's fur?"
hamster_fur = gets.chomp
puts "Is the hamster a good or bad candidate for adoption?"
adoption_candidacy = gets.chomp
puts "What is the hamster's estimated age?"
hamster_age = gets.chomp

if hamster_age == ""
	hamster_age = nil
else
	hamster_age = hamster_age.to_i
end

p "The hamster's name is #{hamster_name}." 
p "On a scale from 1 to 10, it makes noises at a #{hamster_volume}."
p "Its fur color is #{hamster_fur}."
p "It is a #{adoption_candidacy} candidate for adoption."
p "I would estimate its age to be #{hamster_age}."