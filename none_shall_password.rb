EMAIL = "samaca@example.com"
PASSWORD = "12345"

puts "Welcome to None Shall Pass - A Pasword Manager"
puts "Please sing in to continue"
puts "Enter email: "

user_email = gets.chomp

if user_email == EMAIL
  print "Enter password: "
  user_password = gets.chomp
else
    puts "Wrong email"
    exit
end

unless user_password != PASSWORD
    puts "Hello, #{user_email}! You are logged in!"
    puts "What would you like to do?"
    puts "1. Add new service credentials"
    puts "2. retrieve service credentials"
    puts "3. Exit"
    user_selection = gets.chomp
else
    puts "Wrong password"
    exit
end

case user_selection
when "1"
    puts "this will create new service credentials"
when "2"
    puts "this will retrieve service credentials"
else
    puts "Exiting the program.Goodbye."
    exit
end 