#require 'byebug'
#Arrays, Strings & Hash
num = [1,2,3]
name = ["areeba", "aaaa" , "bbbbb"]
num = Array.new([1,2,3])
puts "#{num}"
puts num
print num

#########################################
a= [1,2,3]
b= {name: "areeba", age: "22"}
c= "Areeba Tariq"
puts a.class
puts b.class
puts c.class
########################################

grades = Hash.new
grades.default = "Improve"
grades[10] = "A+"
grades[9] = "A"
grades[8] = "B+"

puts grades.size
###############################################################
            Task 1: Find Currency of given country
###############################################################

world = [{name:"Pakistan", dialingcode: "+92", currency: "PKR", religion: "Muslim", Atomicpower: "Yes", capital: "Islamabad"}, 
        {name: "India", dialingcode: "+91", currency: "INR", religion: "Non-Muslim", Atomicpower: "Yes", capital: "Delhi"}, 
        {name: "Korea", dialingcode: "+82", currency: "Won", religion: "Non-Muslim", Atomicpower: "Yes", capital: "Seoul"}, 
        {name: "Saudi Arab", dialingcode: "+966", currency: "Saudi Riyal", religion: "Muslim", Atomicpower: "Yes", capital: "Riyadh"}, 
        {name: "America", dialingcode: "+1", currency: "Dollars", religion: "Non-Muslim", Atomicpower: "Yes", capital: "Washington"}]

world.each do |hash|
  byebug
  if hash[:name] == "Pakistan"
    puts hash[:currency]
    break
  else
    puts "not found"
  end
end

###############################################################
            Task 2: Authentication (Simple)
###############################################################


users = [
  {'username' =>  'mohsin', 'password' => 'abc123a'},
   {'username' =>  'nomi', 'password' =>'abc123c'},
  {'username' =>  'ghazi', 'password' =>'abc123d'},
  {'username' =>  'haseeb', 'password' =>'abc123e'},
  {'username' =>  'mashoor', 'password' =>'abc123f'},
]

puts 'Welcome to Simple Authenticator'
35.times {print '-'}
puts 'This authenticator will take username and password from you and authenticate it'
puts 'In case of correct password object will be returned'
puts 'In case of incorrect password error will be returned'
puts 'After 3 wrong attempt you will be exited from the program'

match_hash = 0
wrong_attempts = 0 
termination_code = 0 

while wrong_attempts <3 && termination_code == 0
  
  puts 'Enter username'
  username = gets.chomp

  puts 'Enter password'
  password = gets.chomp

  entered_creds = {'username'=> username, 'password'=> password}

  users.each do |i|
      if i == entered_creds
          puts "User name password found \n #{i}"
          match_hash = 1
      end
          
  end

  if match_hash == 0
      puts 'Invalaid username/password no record found'
      wrong_attempts +=1
  end

  puts "Want to Enter credentials again (y/n)"
  terminate_input = gets.chomp

  if terminate_input == 'y'
      termination_code = 0
  elsif terminate_input == 'n'
      termination_code  =1
  else
      termination_code = 1
      puts 'Invalid Entry'

  end

end

if wrong_attempts == 3
  puts 'Too many wrong attempts You are exited now'
else
  puts 'you are exited now'
end

