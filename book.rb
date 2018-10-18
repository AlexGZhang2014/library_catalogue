class Book
  attr_accessor :title, :page_count, :iSBN, :is_checked_out, :day_checked_out

  def initialize(title, page_count, iSBN)
    @title = title
    @page_count = page_count
    @iSBN = iSBN
    @is_checked_out = false
    @day_checked_out = -1
  end


end
