# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a new hash, convert string into hash by splitting 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name(key) and optional quantity(value)
# steps: hash[newkey:] = "value"
# output: updated hash

# Method to remove an item from the list
# input: hash(list), key(item) 
# steps: hash.delete("key")
# output: updated hash

# Method to update the quantity of an item
# input: hash key value
# steps: list[item]= quantity
# output: updated hash

# Method to print a list and make it look pretty
# input: hash list and key
# steps: iterate through hash list using key value as parameters and print out 
# output: list of items 

def create_list(list)
  newlist = {}
  split_list = list.split(' ')
  split_list.each do |item|
    newlist[item] = 1
  end
  newlist
end

array_list = "Lemonade Tomatoes Onions IceCream"
original_list = create_list(array_list)

def add_list(list, item, quantity)
  list[item] = quantity
end

add_list(original_list, "cheese", 2)
add_list(original_list, "bananas", 5)
p original_list

def delete_item(list, item)
  list.delete(item)
end

delete_item(original_list, "Lemonade")
p original_list

def update_item(list, item, quantity)
  list[item] = quantity
end

update_item(original_list, "IceCream", 5)
p original_list

def print_list(list)
  list.each do |item, key|
  puts "Here is your item #{item} and the amount need to buy #{key}"
  end
end

print_list(original_list)



=begin
Release 5
1. It helped build a framework of what the code should look like, it made it easier to just check the psuedocode and insert it directly into the program
2. hashes will allow for key and value to be accessed... with array, it'll be unorganized and harder to update using index
3. Last line in the method
4. I learned that we're able to pass other methods as an argument into another method as a paramater
5. By breaking down the code into sections, we were able to work on one problem at a time. 	

	
=end