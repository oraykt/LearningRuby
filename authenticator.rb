users = [
    {
        username: "oraykt", password: "password"
    },
    {
        username: "test", password: "test"
    }
]

def auth_user (username, password, list_of_users)
  list_of_users.each do | user_record |
    if user_record[:username] == username && user_record[:password] == password
      puts user_record
      attempts = 1
      break
    end
  end
end




puts "Welcome to the authenticator"
puts 25.times{ print "-" }
puts

attempts = 1

while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  auth_user(username, password, users)
  puts 'Press \'Q\' to quit program'
  input = gets.chomp.downcase
  break if input == "q"


  attempts += 1
end