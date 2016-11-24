def message 
	2.times {yield}
end

message { puts "hello!!!!"}

=begin
my_array=[1,2,3,4,5]
my_hash={
	Cookie: "dog",
	Jinx: "Panda Bear",
	Nami: "Mermaid"
}

my_array.each do |x|
	puts x
end

my_hash.each do |x,y|
	puts "#{x}: #{y}"
	end
my_array.map! do |x|
	x=x+1
	puts x
end
=end

numbers=[2,4,6,8]
numberss= {
	first: 2,
	second: 4,
	third: 6,
	fourth: 8
}


#numbers.delete_if {|number| number<5}
#numbers.keep_if {|number| number<5}
#numberss.delete_if{|x,y| y<5}
#numberss.keep_if{|x,y| y<5}


