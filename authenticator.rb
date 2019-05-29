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
      return user_record
    end
  end
  return 'Credentials were not correct!'
end




puts "Welcome to the authenticator"
25.times{ print "-" }
puts


while true
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  auth =  auth_user(username, password, users)
  puts auth
  puts 'Press \'Q\' to quit program'
  input = gets.chomp.downcase
  break if input == "q"
end