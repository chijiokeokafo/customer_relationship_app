class Contact
  attr_accessor :id, :first_name, :last_name, :email, :note

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

  # These methods given for free by attr_accessor
  # def first_name
  # 	return @first_name
  # end

  # def first_name=(new_first_name)
  # 	@first_name = new_first_name
  # end

end