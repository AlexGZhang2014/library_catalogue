class LibraryCatalogue
  attr_accessor :book_collection, :current_day, :length_checkout_period, :initial_late_fee, :fee_per_late_day

  def initialize(book_collection, current_day, length_checkout_period, initial_late_fee, fee_per_late_day)
    @book_collection = book_collection
    @current_day = current_day
    @length_checkout_period = length_checkout_period
    @initial_late_fee = initial_late_fee
    @fee_per_late_day = fee_per_late_day
  end

  def next_day
    self.current_day += 1
  end

  def get_book(book_title)
    self.book_collection.detect {|book| book.title == book_title}
  end

  def check_out(book_title)
    book = self.get_book(book_title)
    if !book
      puts "Sorry, that book does not exist in this library."
    elsif book.is_checked_out
      self.book_already_checked_out(book)
    else
      book.is_checked_out = true
      book.day_checked_out = self.current_day
      puts "You just checked out #{book_title}. It is due on day #{book.day_checked_out + self.length_checkout_period}."
    end
  end

  def return_book(book_title)
    book = self.get_book(book_title)
    days_late = self.current_day - (book.day_checked_out + self.length_checkout_period)
    if days_late > 0
      puts "You owe the library $#{self.initial_late_fee + self.fee_per_late_day * days_late} because your book is #{days_late} days overdue."
    else
      puts "Book returned. Thank you."
    end
    book.is_checked_out = false
  end

  def book_already_checked_out(book)
    puts "Sorry, #{book.title} is already checked out. It should be back on day #{book.day_checked_out + self.length_checkout_period}."
  end
end
