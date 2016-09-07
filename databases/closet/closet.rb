require 'sqlite3'

db = SQLite3::Database.new("closet.db")
db.results_as_hash = true


def new_table(table_name)
	<<-SQL
	CREATE TABLE IF NOT EXISTS #{table_name} (
	    id INTEGER PRIMARY KEY,
	    brand VARCHAR(255),
	    description VARCHAR(255),
	    color VARCHAR(255)
	  )
	SQL
end

db.execute(new_table("jeans"))
db.execute(new_table("t_shirt"))
db.execute(new_table("Dress_shirts"))


def insert_item(db)
	puts "What type of item do you want to add?"
	puts "Jeans, T_shirts, or Dress_shirts"
	table = gets.chomp.downcase
		if table.include?"jeans, t_shirts, dress_shirts"
			puts "What brand is this?"
			brand = gets.chomp.downcase
			puts "Please enter a description?"
			description = gets.chomp.downcase
			puts "Please enter a color?"
			color = gets.chomp.downcase
				db.execute("INSERT INTO #{table} (brand, description, color) VALUES (?, ?, ?)", [brand, description, color])
		else 
			puts "Please try again"
	end
end

def display_table(db, table)
	display = db.execute("select * from #{table}")
			puts "Here is a list of #{table}:"
	display.each do |item|
		puts "#{item[0]}) #{item[1]} #{item[2]}  #{item[3]}"
	end
end

def id_display(db, id, table)
	id_display = db.execute("select * from #{table} where id = ?", [id])
	puts id_display
end



def update_item(db, table, brand, description, color, id)
	puts "Which are you looking for?"
	puts "Jeans, T_shirts, or Dress_shirts"
	table = gets.chomp.downcase
	display_table(db, table)
	puts "Select a number to update"
	id = gets.chomp.to_i
	db.execute("select id from table")
		
	db.execute("UPDATE #{table} set brand = ?, description = ?, color = ?  where id = ?", [brand, description, color, id])
end



# display_table(db, "jeans")

# insert_item(db, "jeans", "seven", "jeans with holes", "red")

# insert_item(db)

# update_item(db, "jeans", "newjeans", "other des", "sss",  7)

id_display(db, 7, "jeans")
