require './book.rb'
require './library_catalogue.rb'

book1 = Book.new("Harry Potter 1", 400, 123098433)
book2 = Book.new("Harry Potter 2", 500, 344858323)
book3 = Book.new("Harry Potter 3", 600, 954384037)
book4 = Book.new("The Freshman, Book 1", 280, 114432989)
book5 = Book.new("The Freshman, Book 2", 300, 348238117)
book6 = Book.new("The Freshman, Book 3", 342, 558374658)
book7 = Book.new("The Freshman, Book 4", 233, 194847433)
book8 = Book.new("The Sophomore, Book 1", 329, 857364853)
book9 = Book.new("The Sophomore, Book 2", 377, 583947573)
book10 = Book.new("The Sophomore, Book 3", 356, 224857464)
book11 = Book.new("The Junior, Book 1", 258, 654844329)
book12 = Book.new("The Senior, Book 1", 352, 743854221)

book_collection1 = [book1, book2, book3]
book_collection2 = [book4, book5, book6, book7, book8, book9, book10, book11, book12]

library1 = LibraryCatalogue.new(book_collection1, 0, 7, 0.5, 1.0)
library2 = LibraryCatalogue.new(book_collection2, 0, 8, 0.4, 0.8)

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
7.times do
  library1.next_day
end
library1.return_book("Harry Potter 3")

library2.check_out_by_ISBN(114432989)
5.times do
  library2.next_day
end
library2.return_book_by_ISBN(114432989)
library2.check_out_by_ISBN(348238117)
8.times do
  library2.next_day
end
library2.return_book("The Freshman, Book 2")
library2.check_out("The Freshman, Book 3")
10.times do
  library2.next_day
end
library2.return_book_by_ISBN(558374658)
