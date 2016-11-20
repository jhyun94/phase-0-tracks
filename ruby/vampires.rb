

def getAge(age,year)
	if (2016-year)==age
		return true 
	else
		return false
	end
end

def getGarlic(garlic)
	if garlic=="y"
		return true
	else 
		return false
	end
end

def getInsurance(insurance)
	if insurance=="y"
		return true
	else
		return false
	end
end

def test(age,garlic,insurance,name)
	if name == "Drake Cula"
		return "Definitely a vampire"
	elsif name == "Tu Fang"
		return "Definitely a vampire"
	elsif age && (garlic || insurance)
		return "Probably not a vampire"
	elsif !age && (!garlic && !insurance)
		return "Almost certainly a vampire"		
	elsif !age && (!garlic || !insurance)
		return "Probably a vampire"		
	else
		return "Results inconclusive"
	end
end

def check
	alert=false
	puts "Name any allergies you may have(type done when finished)"
	allergy=gets.chomp
	if allergy=="sunshine"
		alert=true
	end

	while allergy!="done"
		allergy=gets.chomp
		if allergy=="sunshine"
			alert=true
		end
	end
	return alert
end


print "How many employees will be processed: "
employee=gets.chomp
employee=employee.to_i
counter=0

while counter < employee
print "\n"
print "What is your name? "
name= gets.chomp

print "How old are you? "
age= gets.chomp
age=age.to_i

print "What year were you born? "
year=gets.chomp
year=year.to_i

print "Our company cafeteria serves garlic bread."
print "Should we order some for you?(y/n) "
garlic=gets.chomp

print "Would you like to enroll in the company's health insurance?(y/n) "
insurance=gets.chomp

correctAge=getAge(age,year)
garlic=getGarlic(garlic)
insurance=getInsurance(insurance)
result=test(correctAge,garlic,insurance,name)
allergy=check
	if allergy==true
		print "\n"
		puts "Probably a vampire"		
	else
		print "\n"
		puts result
	end
counter+=1
end

print "Actually, never mind! What do these questions have to do with anything?"
print " Let's all be friends."






