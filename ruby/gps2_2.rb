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
  puts "#{item}, qty: #{quantity}".capitalize
  end
end

def create_list(list)
  grocery_list = {}
  arrayed_list = list.split(' ')
  arrayed_list.each do |item|
  grocery_list[item] = 1  
  end
  return grocery_list
end

def add_item(new_item, grocery_list)
  grocery_list[new_item] = 1
  #p grocery_list
end

# Calling method and storing it in the 'grocery_list' variable
grocery_list = create_list("carrots apples cereal pizza")

def remove_item(old_item, grocery_list)
  grocery_list.delete(old_item)
  #p grocery_list
end

def update_quantity(item, new_number, grocery_list)
  grocery_list[item] = new_number
  #p grocery_list
end

add_item("lemonade", grocery_list)
update_quantity("lemonade", 2, grocery_list)
add_item("tomatoes", grocery_list)
update_quantity("tomatoes", 3, grocery_list)
add_item("onions", grocery_list)
add_item("ice cream", grocery_list)
update_quantity("ice cream", 4, grocery_list)
remove_item("lemonade", grocery_list)
update_quantity("ice cream", 1, grocery_list)
p pretty(grocery_list)
