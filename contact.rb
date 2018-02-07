class Contact

  @@contacts = []

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
  end

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email, notes = 'N/A')
  new_contact = Contact.new(first_name, last_name, email, notes)
  new_contact.save
  new_contact
  end

#readers
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end
#writers
  def first_name(first_name)
    @first_name = first_name
  end

  def last_name(last_name)
    @last_name = last_name
  end

  def email(email)
    @email = email
  end

  def notes(notes)
    @notes = notes
  end

  #instance methods
  def full_name
    "#{last_name} , #{first_name}"
  end

  def save
    @@contacts << self
  end
end
