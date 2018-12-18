require 'bcrypt'
 
users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
 
# CREATE A HASH FOR USER PASSWORD
def create_hash_digest(password)
  BCrypt::Password.create(password)
end
 
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end
 
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

new_users = create_secure_users(users)
puts new_users

# AUTHENTICATE USER
def authenticate_user(username, password, list_of_users)
    # for each user, check to see if the username and the verified hashed pw match
    list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
            return user_record
        end

    end
    "Credentials were not correct."
end


p authenticate_user("heisenberg", "password5", new_users)