require_relative 'bcrypt_module'

users = [
    {
        username: 'newUser',
        password: 'newPass'
    }
]

hashed_users = Bcrypt_module.create_secure_users(users)

puts hashed_users