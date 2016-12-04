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
