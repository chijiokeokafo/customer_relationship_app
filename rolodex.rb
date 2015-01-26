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

	def mod_contact(idnum)
		modify = find_contact(idnum) 
		puts "Update First Name: " 
		newname = gets.chomp 
		contact = @contacts.find(idnum).first 
		contact.first_name = newname
		puts "Update Last Name: "
		newlastname = gets.chomp
		contact = @contacts.find(idnum).first
		contact.last_name = newlastname
		puts "Update Email:"
		newemail = gets.chomp
		contact = @contacts.find(idnum).first
		contact.email = newemail
		puts "Update Note:"
		newnote = gets.chomp
		contact = @contacts.find(idnum).first
		contact.note = newnote
	end
	
	def display_all
	  @contacts
	end
	
	def search_contact(id)
		@contacts.each do |number|
			if id == number.id
				puts "FIRST NAME: #{number.first_name}", "LAST NAME: #{number.last_name}", "EMAIL: #{number.email}", "NOTE: #{number.note}"
			# elsif id > .id
			#    puts "That isn't a saved ID number, try again."
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
	def delete_contact(id)
		erased_id = find_contact(id)
		@contacts.each do |del|
			if id == del.id
				@contacts.delete(erased_id)
				puts "contact deleted."
			end
		end
	end
end