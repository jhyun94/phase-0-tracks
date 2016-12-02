# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# split each item into array,
# define hash
# steps: 
  # for each item in the array, 
  # set default quantity from array
  # return hash
# p hash
# add_to_list(name, value)
# input: name of item, and value
# steps: hash[:name] = value
# output: hash
# Method to remove an item from the list
# input: another function with parameters of name
# steps: find name in hash, remove that name 
# output: hash
# Method to update the quantity of an item
# input: another function with name of item, and value to change to.
# steps: find name in hash, update quantity
# output: hash
# Method to print a list and make it look pretty
# input: hash
# steps: make a loop for every item in list, and say you have to buy at the top, print each item in string form
# output: each item in string form.



def create_list(string)
    array=string.split(" ")
    list={}
    x=0
    array.each do |item|
      list[item]=x
      x+=1
    end
    list
end
def add_to_list(name,list,value=2)
  list[name]=value
  list
end
def remove_item(name,list)
  list.delete(name)
  list
end
def pretty_list(list)
  puts "This is what you need: "
  list.each do |key,value|
    puts "#{value}: #{key}. "
  end
end
def new_qty(name, value, list)
  list[name] = value
  list
end
#driver code
list=create_list("apple orange grapes strawberry")
add_to_list("Lemonade",list, 2)
add_to_list("Tomatoes",list, 3)
add_to_list("Onions",list, 1)
add_to_list("Ice Cream",list, 4)
remove_item("Lemonade",list)
new_qty("Ice Cream", 1, list)
pretty_list(list