# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

#Release 0 
#1
get '/contact' do 
  "633 Folsom St., San Francisco, CA 94103"
end

#2 query parameter
get '/great_job/' do 
  person = params[:person]
  if person
    "Good job, #{person}!"
  else 
    "Good job!"
  end
end

#3 route parameter
get '/:number_1/add/:number_2' do 
  sum = params[:number_1].to_i + params[:number_2].to_i
  "results of #{params[:number_1]} + #{params[:number_2]} = #{sum}"
end

#4 search using campus
get '/city/:campus' do 
  campus = params[:campus]
  names = ""
  list = db.execute("SELECT * FROM students where campus=?", [campus])
  names << "Here is a list of students at the #{campus} campus: <br>"
  list.each do |student|
    names << "#{student['name']}<br>"
  end
  names
end

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
  p params
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end