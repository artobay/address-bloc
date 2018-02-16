require_relative '../models/address_book'
 
 RSpec.describe AddressBook do
   describe "attributes" do
     it "responds to entries" do
       book = AddressBook.new
       expect(book).to respond_to(:entries)
     end
     
       it "initializes entries as an array" do
       book = AddressBook.new
       expect(book.entries).to be_an(Array)
     end
 
     it "initializes entries as empty" do
       book = AddressBook.new
       expect(book.entries.size).to eq(0)
     end
     
   end
   
   describe "#add_entry" do
     it "adds only one entry to the address book" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
 
       expect(book.entries.size).to eq(1)
     end
 
     it "adds the correct information to entries" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]
 
       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
     end
   end
  
    describe "#remove_entry" do
    it "removes an entry using the name, phone_number, and email address" do 
     book = AddressBook.new 
     book.add_entry("Michael Faraday", "010.210.5181", "michael.faraday@faraday.com")
     
     #Aliyar : Can you please explain to me why we used .add_entry method here ? I dont really get 
             # Why dont we use .remove_entry up here if we want to remove something! 
             # When I compare the add_entry to remove_entry I dont get why we didnt use new_entry variable here
      name = "Ada Lovelace"
      phone_number = "010.012.1815"
      email_address = "angusta.king@lovelace.com"
      #Aliyar : Why are we adding add_entry here. I dont really get it! 
      book.add_entry(name, phone_number, email_address)
      
      expect(book.entries.size).to eq 2 #Aliyar: Is this mean that we passed both Michael and Ada here?
      book.remove_entry(name, phone_number, email_address)
      
      expect(book.entries.size).to eq 1
      expect(book.entries.first.name).to eq("Michael Faraday")
     
     
     end 
    
   end  
   
 end