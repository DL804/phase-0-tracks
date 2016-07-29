# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: convert string into a hash  
  # .each go into and set a hash with key for item and quantity for value
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash 

# Method to add an item to a list
# input: item name(key) and optional quantity(value) hash["key"] = "value"
# steps: hash["key"] = "value"
# output: updated hash

# Method to remove an item from the list
# input: list(hash), item(key), quantity(value)
# steps: hash.delete("key")
# output: updated hash

# Method to update the quantity of an item
# input: 3 parameter, list, item, quantity
# steps: hash["key"] = "value"
# output: updated hash

# Method to print a list and make it look pretty
# input: list, key
# steps: .each to print, capitalize, 
# output: updated list

# Method to create a list

def pretty(grocery_list)
  grocery_list.each do |item, quantity|
  puts "#{item} qty: #{quantity}".capitalize
  end
end

def create_list(list)
  grocery_hash = {}
  arrayed_list = list.split(' ')
  arrayed_list.each do |item|
  grocery_hash[item] = 1  
end
grocery_hash
end

updated_list = create_list("Apple, Pizza, Cheese")

def add_item(list,new_item,quantity )
  list[new_item] = quantity
end 

add_item(updated_list, "Lemonade", 2)
add_item(updated_list, "Tomatoes", 3)
add_item(updated_list, "Onions", 1)
add_item(updated_list, "Ice Cream", 4)


def remove_item(list, old_item)
  list.delete(old_item)
  #p grocery_list
end

remove_item(updated_list, "Lemonade")



def update_quantity(list, new_item, quantity)
  list[new_item] = quantity
  #p grocery_list
end

update_quantity(updated_list, "Ice Cream", 1)

pretty(updated_list)



=begin
Release 5
1. It helped build a framework of what the code should look like, it made it easier to just check the psuedocode and insert it directly into the program
2. hashes will allow for key and value to be accessed... with array, it'll be unorganized and harder to update using index
3. Last line in the method
4. I learned that we're able to pass other methods as an argument into another method as a paramater
5. By breaking down the code into sections, we were able to work on one problem at a time. 	

	
=end