
def intro
	puts "Instructions: "
	puts "One person will enter a word to be guessed and the other person will try to guess the word."
	puts "The amount of guess will be limited."
	puts "Goodluck!"
end


class Game
	attr_reader :current_layout, :occurance
	attr_accessor :correct
	def initialize(word)
		@word=word
		@guesses=word.length
		@correct = false
		@current_layout=""
		@occurance=[]
		@letter_tried=[]
		@value=false
	end

	def create_layout
		@guesses.times do 
			@current_layout=@current_layout+"_ "
		end
		@current_layout.strip!
		return @current_layout
	end

	def guess_left
		puts "You have #{@guesses} left!"
	end

	def guess_checker(letter)
		return @word.include? letter
	end

	def whitespace_checker
		return @current_layout.include? "_"
	end

	def remove_whitespace
		@current_layout.gsub!(/\s+/, '')
	end

	def add_whitespace
		@current_layout.gsub!(/(.{1})(?=.)/, '\1 \2')
	end


	def update_layout(letter)
		if @letter_tried.include? letter
			@value=true
		else
			@letter_tried.push(letter)
			@value=false
		end

		index=0
		if guess_checker(letter)==true
			@word.each_char do |char|
				if char==letter
					@occurance.push(index)
				end

				index+=1
			end

			remove_whitespace

			@occurance.each do |x|
				current_layout[x]=letter
			end

			add_whitespace
			@occurance=[]


		end

		
		return @current_layout
	end

	def num_of_guesses
		if @value==false
		@guesses-=1
		else
			puts "You already tried that letter"
		end
	end

	def game_checker
		if @guesses==0
			puts "Sorry you ran out of guesses!"
			puts "The answer was #{@word}"
			@correct=true
		end

		if whitespace_checker==false
			puts "Congratulations! You figured it out!!!"
			@correct=true
		end
	end


end

puts "Welcome to the guessing game!"
intro
print "Enter a word: "
word=gets.chomp
guessing=Game.new(word)
guessing.create_layout

while !guessing.correct
	puts guessing.current_layout
	puts guessing.guess_left
	print "Enter a letter: "
	guess=gets.chomp
	guessing.update_layout(guess)
	guessing.num_of_guesses
	guessing.game_checker
		
end









