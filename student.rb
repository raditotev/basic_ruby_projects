class Student
	attr_accessor :first_name, :last_name, :primary_phone_nimber

	def introduction
		puts "Hi, I'm #{first_name}!"
	end
end

radi = Student.new
radi.first_name = "Radi"

radi.introduction