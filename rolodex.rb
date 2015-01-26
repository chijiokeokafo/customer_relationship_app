require_relative './contact.rb'


class Rolodex
	attr_reader :contacts 
	@@ids = 001
	def initialize
		@contacts = []
		# @ids = 001
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
	
	def search_contact(id)
		@contacts.each do |number|
			if id == number.id
				puts "FIRST NAME: #{number.first_name}", "LAST NAME: #{number.last_name}", "EMAIL: #{number.email}", "NOTE: #{number.note}"
			elsif id != number.id
			   puts "That isn't a saved ID number, try again."
			end	
		end
	end
	
	def filter_contacts(attribute)
		@contacts.each do |attr|
			if attribute ==  "firstname"
				puts attr.first_name
			elsif attribute == "lastname"
				puts attr.last_name
			elsif attribute == "email"
				puts attr.email
			else
				puts "Are you sure that's an attribute?"
			end
		end
		
	end

	# def delete_contact
		 
	# end
end