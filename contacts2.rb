contacts = []

while contacts != 0
  puts """
  ----Contact List----
  1. Create Contact
  2. list of contacts
  3. Edit Contact
  4. Delete Contact
  5. Exit
  """
  choice = gets.to_i

  case choice
    when 1
      puts "Please write a name:"
      name = gets.strip
      contacts << name

    when 2
      puts contacts
      print ">"
      gets
    when 3
      puts "please enter name of contact"
      puts contacts"\n"
      which_contact = gets.strip
      c_index = contacts.index(which_contact)
      puts "enter new name"
      print">"
      new_name = gets.strip
      contacts[c_index] = new_name
    when 4
      puts "which contact would you like to delete"
      which_contact = gets.strip
      c_index_2 = contacts.index(which_contact)
      contacts.delete(c_index_2)
      puts "#{which_contact} was just deleted"
    break when 5
    else
      puts "Invalid input"
    end
end
