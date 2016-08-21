class TodoList
  
attr_reader :list
  
  def initialize(list)
   @list = list
  end

  def get_items
    list
  end

  def add_item(item)
  	list << item
  end 

  def delete_item(item)
  	list.delete(item)
  end
  
  def get_item(index)
  	list[index]
  end

end

list = ["do the dishes","mow the lawn"]
test = TodoList.new(list)
p test.list
test.add_item("mop")
p test.list
test.delete_item("do the dishes")
p test.list
