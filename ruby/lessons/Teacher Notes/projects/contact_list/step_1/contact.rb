class Contact
  attr_writer :first_name, :last_name, :middle_name

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def middle_name
    @middle_name
  end

  def first_last
    first_name + " " + last_name
  end

  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    if !@middle_name.nil?
      last_first += " "
      last_first += middle_name.slice(0,1)
      last_first += "."
    end
    return last_first
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += " "
    full_name += last_name
    return full_name
  end

  def to_s(format = 'full_name')
    case format
    when "full_name"
      full_name
    when "last_first"
      last_first
    when "first"
      first_name
    when "last"
      last_name
    else
      first_last
    end
  end
end

contact = Contact.new
contact.first_name = "Brandon"
contact.last_name = "Barrette"
contact.add_phone_number("Home", "123-456-7890")
contact.add_phone_number("Work", "123-555-7890")


puts contact.inspect
puts contact.first_last