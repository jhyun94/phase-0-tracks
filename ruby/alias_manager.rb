def letter_changer(word)
	index=0
	while index<word.length
		case word[index]
		when "a"
			word[index]="e"
		when "e"
			word[index]="i"
		when "i"
			word[index]="o"
		when "o"
			word[index]="u"
		when "u"
			word[index]="a"
		when " "
			word[index]=word[index]
		else
			word[index]=word[index].next
			if word[index].match(/[aeiou]/)
				word[index]=word[index].next!
			end
		end
		index+=1
	end
	return word
end

			
def capitalize(word)
	word=word.split(" ")
	word.map! {|x| x.capitalize!}
	word=word.join(" ")
	return word
end



def alias_maker(name)
	name.downcase!
	name=name.split(" ")
	name=name.reverse!
	name=name.join(" ")
	name=name.split("")
	name=letter_changer(name)
	name=name.join("")
	return name
end

agents={
	names: {
		real: [],
		cover: []
	},
}

puts "Enter a name. Press quit when done."
real_name=gets.chomp

until real_name =="quit"
cover_name=alias_maker(real_name)
cover_name=capitalize(cover_name)
agents[:names][:real].push(real_name)
agents[:names][:cover].push(cover_name)
puts cover_name
print "\n"
real_name=gets.chomp
end

length=agents[:names][:cover].length
index=0
while index<length
	puts "#{agents[:names][:cover][index]} is actually #{agents[:names][:real][index]}!"
	index+=1
end










