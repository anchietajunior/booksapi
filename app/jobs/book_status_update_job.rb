class BookStatusUpdateJob < ApplicationJob
  queue_as :default

  def perform(book_id)
    book = Book.find(book_id)

    p "Book status changed: #{book.title} is now checkout_out"
  end
end
