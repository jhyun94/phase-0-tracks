
require 'sqlite3'

db = SQLite3::Database.new("employees.db")
db.results_as_hash=true

create_table = <<-SQL
	create table if not exists payroll(
		id integer primary key,
		name text,
		rate int
	)
SQL

def insert_payroll(db,name,wage)
	db.execute("insert into payroll(name,rate) values (?, ?)", [name,wage])
end 

db.execute(create_table)

print "How many employee to enter? "
num=gets.chomp.to_i

num.times do 
	print "Enter employee first and last name: "
	name=gets.chomp
	print "Enter the hourly wage: "
	wage=gets.chomp
	insert_payroll(db,name,wage)
end






