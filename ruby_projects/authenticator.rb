# frozen_string_literal: true

# Authentication simple app
users = [
    { username: "Krys", password: "password" },
    { username: "test_user", password: "password1" }
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    "Credentials incorrect"
end

puts "Welcome to the Authenticator"
25.times { print "-" }
puts
puts "This program takes input from the user and compares the password"
puts "If the password is correct it will return the user object"

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp

    print "Password: "
    password = gets.chomp

    result = auth_user(username, password, users)
    puts result

    puts "press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4
