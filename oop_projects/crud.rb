module Crud


    require 'bcrypt'
    puts "Module crud activated"
    

    
    # CREATE A HASH FOR USER PASSWORD
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

    # new_users = create_secure_users(users)
    # puts new_users

    # AUTHENTICATE USER
    def self.authenticate_user(username, password, list_of_users)
        # for each user, check to see if the username and the verified hashed pw match
        list_of_users.each do |user_record|
            if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
                return user_record
            end

        end
        "Credentials were not correct."
    end

end

# p authenticate_user("heisenberg", "password5", new_users)