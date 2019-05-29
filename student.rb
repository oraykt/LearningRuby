class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(fName, lName, email, uName, uPassword)
    @first_name = fName
    @last_name = lName
    @email = email
    @username = uName
    @password = uPassword
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, username: #{@username}, password:#{@password}"
  end

end

student1 = Student.new("Oray", "Kurt",
                      "oraykt@gmail.com",
                      "oraykt", "testPass")
student2 = Student.new("Zeynep", "Tekiner",
                      "zeyneptr@gmail.com",
                      "zeyneptr", "zeyPass")

puts student1.to_s
puts student2.to_s