=begin
create a hash
get input
convert needed values
store input as values for the hash
output the hash

	
=end

def convert(string)
	string=string.to_i
	return string
end




application = {
	name: " ",
	age: " ",
	num_of_children: " ",
	decor_theme: " ",
}

#Get user data
puts "Fill out the information below!"
print "Name:  "
name=gets.chomp

print "Age: "
age=gets.chomp

print "Number of Children: "
children=gets.chomp

print "Decoration Theme: "
theme=gets.chomp

age=convert(age)
children=convert(children)

#inputs are stored into the hash
application[:name]=name
application[:age]=age
application[:num_of_children]=children
application[:decor_theme]=theme


#outputs the application
puts application
print "\n"

#update the application
puts "Type the name of the section to update once ex. num_of_children. Type none if everything is correct."
input=gets.chomp

case input

	when "none"
		print "\n"
	when "name"
		print "Enter new value: "
		application[:name]=gets.chomp
		print "\n"
	when "age"
		print "Enter new value: "
		application[:age]=gets.chomp
		print "\n"
	when "num_of_children"
		print "Enter new value: "
		application[:age]=gets.chomp
		print "\n"
	when "decor_theme"
		print "Enter new value: "
		application[:decor_theme]=gets.chomp
		print "\n"
	end

puts application




















