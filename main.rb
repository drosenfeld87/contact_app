require './contact.rb'

alex = Contact.new('Alex', 'Banuet', 'alex@gmail.com')
deb = Contact.new('Deb', 'Rosenfeld', 'deb@gmail.com', 'Easy to spell'
)
puts Contact.all.size

sleep(5)

alex.save
puts Contact.all.size

sleep(5)

deb.save

puts Contact.all.size
