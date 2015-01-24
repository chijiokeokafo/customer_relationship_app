class Rolodex
	attr_reader :contacts
	@@ids = 1001
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
	
	def display_contact

		
	end
	
	def display_attribute
		
	end

	def delete_contact
		
	end
end