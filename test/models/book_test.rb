require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  setup do
    @book = books(:one)
  end

  test 'expeceted values validations' do
    another_book = Book.new

    assert_not another_book.valid?

    another_book.title = 'My Book 3'

    assert_not another_book.valid?

    another_book.author = 'My Author 4'

    assert_not another_book.valid?

    another_book.rating = 1

    another_book.publication_date = Time.now

    assert another_book.valid?
  end
end
