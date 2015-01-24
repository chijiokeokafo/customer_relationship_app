class Rolodex
	attr_reader :contacts
	@@ids = 001
	def initialize
		@contacts = []
		# @ids = 1001
	end

	def add_contact(contact)
		contact.id = @@ids
		@contacts << contact
		@@ids += 1
	end
	
	def find_contact(contact_id)

		found_contact = nil
		@contacts.each do |contact|
			if contact_id == contact.id
				found_contact = contact
			end
		end
		return found_contact
	end
	
	def display_all
	  @contacts
	end
	
	# def search_contact(id)
	# 	contacts.each do |number|
	# 		if number.id == id
	# 			puts "FIRST NAME: #{x.first_name}", "LAST NAME: #{x.last_name}", "EMAIL: #{x.email}", "NOTE: #{x.note}"
	# 		else
	# 			print "That contact does not exist, are you sure you have the right ID? "
	# 		end 		
	# end
	
	# def display_attribute
		
	# end

	# def delete_contact
		
	# end
end