class User
	attr_accessor :name, :email
	before_create :create_remember_token

	def initialise(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end

end
