EMAIL = "samaca@example.com"
PASSWORD = "12345"
PASSWORD_VAULT = {aws: {username: "miguel", password: 54321}}
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
    puts "Enter the name of the new service: "
    new_service = gets.chomp
    PASSWORD_VAULT[new_service] = {}
    
    print "Please enter the usename for this new service: "
    new_service_username = gets.chomp
    PASSWORD_VAULT[new_service]["username"] = new_service_username
    
    print "Please enter the password for this new service: "
    new_service_password = gets.chomp
    PASSWORD_VAULT[new_service]["password"] = new_service_password 
when "2"
    print "Please enter the name of the of the service you wish to access credencials for: "
    requested_service_name = gets.chomp
    credentials = PASSWORD_VAULT[requested_service_name.to_sym]
    
    puts "Here are the credencials for #{requested_service_name}:"
    credentials.each do |key, val|
        puts "#{key}: #{val}"
    end
else
    puts "Exiting the program.Goodbye."
    exit
end 