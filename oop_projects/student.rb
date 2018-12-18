class Student
    attr_accessor :first_name, :last_name, :email, :username, :password
    
    def initialize(first_name,last_name,username,email,password)
        @first_name =first_name
        @last_name = last_name
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, email: #{@email}, Username: #{@username}"
    end

end


aylin = Student.new("Stink", "McGee", "Pewpew1", "stinkmcgee@gmail.com", "password1")
brian = Student.new("Link", "Bingo", "Lewlew1", "linkmcgee@gmail.com", "password2")

puts aylin
puts brian

aylin.last_name =brian.last_name

puts aylin
