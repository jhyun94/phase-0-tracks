=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		return words + "!!!" + " :)"
	end
end

puts Shout.yell_angrily("STOPPP")
puts Shout.yell_happily("HII")

=end

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + " :("
	end

end

class Dwarf
	include Shout
end

class Baby
	include Shout
end

Janna = Baby.new
puts Janna.yell_happily("I love cookies")
puts Janna.yell_angrily("I hate ice cream")

Axel = Dwarf.new
puts Axel.yell_happily("I love axes")
puts Axel.yell_angrily("I hate giants")




		