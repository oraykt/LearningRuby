
module Bcrypt_module
  require 'bcrypt'
  puts "Bcrypt_module activated"

  users = [
      {
          username: 'oraykt',
          password: 'testPass'
      },
      {
          username: 'zeykt',
          password: 'testtPass'
      }
  ]

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  new_users = create_secure_users(users)

  def self.authenticate_users (username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct!"
  end

  # puts authenticate_users("oraykt", "testPass", new_users)
  # puts authenticate_users("oraykt", "wrongPass", new_users)
end