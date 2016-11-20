=begin
	Ask for input
	depending on input either run encrypt or decrypt program
	output the result
	
=end






def encrypt(input)
	index=0
	while index<input.length
		if input[index]=="z"
			input[index]="a"
			index+=1
		else
		input[index]=input[index].next!
		index+=1
		end

	end

	puts input

end


def decrypt(input)
	counter=0
	while counter<input.length
		if input[counter]=="a"
			input[counter]="z"
			counter+=1
		else
		value=input[counter].ord
		value=value-1
		input[counter]=value.chr
		counter+=1
		end
		
	end
	puts input
end

print "Would you like to encrypt or decrypt? "
choice=gets.chomp
print "Enter a password: "
password=gets.chomp

if choice=="encrypt"
	encrypt(password)
elsif choice=="decrypt"
	decrypt(password)
else
	print "Invalid choice answer"
end







