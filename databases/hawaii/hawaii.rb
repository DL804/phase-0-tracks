# Hawaii vacation planner, calculates how much miles you'll need to travel to Hawaii for free

require 'sqlite3'

db = SQLite3::Database.new(hawaii.db)

create_balance_table = <<-SQL
CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    airline VARCHAR(255), 
    miles int, 
    expiration
  )
SQL