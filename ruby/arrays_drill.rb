#Release 1

array = []
p array 

array.push("a", "b", "c", "d", "e")
p array

array.delete(2)
p array

array.insert(2, "inserted")
p array

array.delete("a")
p array

p array.include? "b"

array2 = ["hello", "you"]

p array + array2

#Release 2
def build_array(x, y, z)
	array = [x, y, z] 
end

p build_array(1, "two", "nil")

def add_to_array(emptyarray, letter)
	array = emptyarray
	array.push(letter)
end

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)

