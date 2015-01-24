require_relative './rolodex.rb'
require_relative './contact.rb'

class CRM #class must have a capital letter!
    attr_reader :name
    
    def initialize(name)
      @name = name
      @rolodex = Rolodex.new
    end

    def print_main_menu
      puts "[1] Add a contact"
      puts "[2] Modify a contact"
      puts "[3] Display all contacts"
      puts "[4] Display one contact"
      puts "[5] Display an attribute"
      puts "[6] Delete a contact"
      puts "[7] Exit"	
      puts "Enter a number"
    end

    def main_menu
      puts "Welcome to #{@name}"
      while true
        print_main_menu
      input = gets.chomp.to_i #=> 4
      choose_option(input)
      return if input == 7
    end
  end

  def choose_option(option)
    # => option = 4
    #case only does strict ==
    case option
    when 1 then add_contact
    when 2 then modify_contact
    when 3 then display_all
    when 4 then single_contact
    when 5 then display_attribute
    when 6 then delete_contact
    when 7
      puts "Goodbye!"
      return
    else puts "incorrect option, try again"
    end
  end
  

  def add_contact
    puts "Provide contact details"
    print "First Name:"
    first_name = gets.chomp
    print "Last Name:"
    last_name = gets.chomp
    print "Email:"
    email = gets.chomp
    print "Note:"
    note = gets.chomp

    new_contact =Contact.new(first_name, last_name, email, note)
    @rolodex.add_contact(new_contact)
  end

  def modify_contact
    puts "Enter contact ID to modify"
    modify = gets.chomp.to_i

    found = @rolodex.find_contact(modify)
    if found.nil?
      puts "Could not find a contact with that ID"
    else
      found.first_name = " "
    end
  end

  def display_all
    puts "ALL CONTACTS", "---------------"
    @rolodex.contacts.each do |x|
      puts "FIRST NAME: #{x.first_name}", "LAST NAME: #{x.last_name}", "EMAIL: #{x.email}", "NOTE: #{x.note}"
    end
  end
  def single_contact
  	puts "Please enter two digit ID: "
  	find_single = gets.chomp
  	find = 
  end

end

bitmaker = CRM.new("Bitmaker labs CRM")
bitmaker.main_menu

