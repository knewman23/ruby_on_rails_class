class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First Name: #{@first_name}, Last Name: #{@last_name}, Username: #{@username}, Email: #{@email}, Password: #{@password}"
  end
end

krys = Student.new("Krys", "Newman", "krys.newman@gmail.com", "KrysN", "password1")
puts krys
