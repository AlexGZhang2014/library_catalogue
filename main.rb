require './book.rb'
require './library_catalogue.rb'

book1 = Book.new("Harry Potter 1", 400, 123098433)
book2 = Book.new("Harry Potter 2", 500, 344858323)
book3 = Book.new("Harry Potter 3", 600, 954384037)

book_collection1 = [book1, book2, book3]

library1 = LibraryCatalogue.new(book_collection1, 0, 7, 0.5, 1.0)

library1.check_out("Harry Potter 7")
library1.check_out("Harry Potter 1")
library1.check_out("Harry Potter 1")
10.times do
  library1.next_day
end
library1.return_book("Harry Potter 1")
library1.check_out("Harry Potter 2")
4.times do
  library1.next_day
end
library1.check_out("Harry Potter 3")
5.times do
  library1.next_day
end
library1.return_book("Harry Potter 2")
