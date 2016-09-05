#  vacation planner using airline mileage for free flights

require 'sqlite3'

db = SQLite3::Database.new("hawaii.db")

create_mileage_table = <<-SQL
CREATE TABLE IF NOT EXISTS mileage(
    id INTEGER PRIMARY KEY,
    airline VARCHAR(255),
    miles int
  )
SQL


db.execute(create_mileage_table)

	def insert_mileage(db, input_airline, input_miles)
		db.execute("INSERT INTO mileage(airline, miles) VALUES (?, ?)", [input_airline, input_miles])
	end

	def update_mileage(db, input_airline, input_miles)
		db.execute("UPDATE mileage SET miles = ? WHERE airline = ?", [input_miles, input_airline])
	end

	def display_mileage(db)
		display = db.execute("SELECT * FROM mileage")
		puts "Here is a list of your miles"
		puts "----------------------------" 
		display.each_index do |index|
			puts "Airline: #{display[index][1].capitalize}" + "Miles: ".rjust(12) + "#{display[index][2]}"
		end
		puts ""
	end

	def mileage_checker(db, userinput)
		if userinput == "united"
			puts "How many United airlines tickets do you want?"
			number_ticket = gets.chomp.to_i
				while number_ticket.to_s.to_i == 0 
					puts "Please enter a number"
					number_ticket = gets.chomp.to_i
				end
			per_ticket = 45000
			required_miles = per_ticket * number_ticket
			actual_miles = db.execute("select miles from mileage where airline = 'united'")
			actual_miles = actual_miles[0][0]
				if required_miles > actual_miles
				   	puts "Sorry you do not have enough miles, please earn an additional #{required_miles - actual_miles} miles"
				else
					puts "You're good to go, remember to bring sunblock! You will have #{actual_miles - required_miles} miles left after this trip"
				end
		elsif userinput == "hawaiian"
			puts "How many Hawaiian airlines tickets do you want?"
			number_ticket = gets.chomp.to_i
				while number_ticket.to_s.to_i == 0 
					puts "Please enter a number"
					number_ticket = gets.chomp.to_i
				end
			per_ticket = 35000
			required_miles = per_ticket * number_ticket
			actual_miles = db.execute("select miles from mileage where airline = 'hawaiian'")
			actual_miles = actual_miles[0][0]
				if required_miles > actual_miles
				   	puts "Sorry you do not have enough miles, please earn an additional #{required_miles - actual_miles} miles"
				else
					puts "You're good to go, remember to bring sunblock! You will have #{actual_miles - required_miles} miles left after this trip"
				end
		elsif userinput == "american"
			puts "How many American airlines tickets do you want?"
			number_ticket = gets.chomp.to_i
				while number_ticket.to_s.to_i == 0 
					puts "Please enter a number"
					number_ticket = gets.chomp.to_i
				end
			per_ticket = 45000
			required_miles = per_ticket * number_ticket
			actual_miles= db.execute("select miles from mileage where airline = 'american'")
			actual_miles = actual_miles[0][0]
				if required_miles > actual_miles
				   	puts "Sorry you do not have enough miles, please earn an additional #{required_miles - actual_miles} miles"
				else
					puts "You're good to go, remember to bring sunblock! You will have #{actual_miles - required_miles} miles left after this trip"
				end
		else 
			puts "You do not have any #{userinput} miles"
		end 
	end

# insert_mileage(db, "united", 50000)
# update_mileage(db, "american", 9999)
# display_mileage(db)
# mileage_checker(db, "united")

puts "Welcome to Vacation Planner 1.0
You can record your frequent flier miles, update or check if you have enough to fly to Hawaii
Do you want to 'record', 'update', or 'check' miles?"
response = gets.chomp
	while response != "no"
		if response == "record"
			puts "Please enter an airline(American, United, or Hawaiian)?"
			airline = gets.chomp.downcase
			puts "How many miles?" 
			miles = gets.chomp.to_i
			insert_mileage(db, airline, miles)
			puts "Do you want to record additional miles ('yes') or type ('no') to exit"
			response = gets.chomp
		elsif response == "update"
			display_mileage(db)
			puts "To update, type in the airline."
			airline = gets.chomp.downcase
			puts "Please type in the updated miles"
			miles = gets.chomp.to_i
			update_mileage(db, airline, miles)
			puts "Do you want to record additional miles ('yes') or type ('no') to exit"
			response = gets.chomp
		elsif response == "check"
			display_mileage(db)
			puts "Which airline do you want to fly with to Hawaii?"
			airline_response = gets.chomp.downcase
			mileage_checker(db, airline_response)
			puts "Do you want to check with another airline ('yes') or type ('no') to exit"
			response = gets.chomp
		else
			puts "Invalid option, please try again later"
			break
		end
		display_mileage(db)
		puts "Thanks for using Vacation Planner 1.0" 
	end

