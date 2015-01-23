class Rolodex
	@@ids = 1001
	def initialize
		@contact = []
		# @ids = 1001
	end
	def add_contact(contact)
		contact.id = @@ids
		@contacts << contact
		@@ids += 1
		contact
	end
	def modify_contact
end