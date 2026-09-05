require "test_helper"

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(
      title: "Practical Object-Oriented Design",
      author: "Sandi Metz",
      price: 35.00,
      description: "An excellent guide to software design.",
      published_at: Date.new(2012, 9, 9)
    )
  end

  test "valid book" do
    assert @book.valid?
  end

  test "invalid without title" do
    @book.title = ""
    assert_not @book.valid?
    assert_includes @book.errors[:title], "can't be blank"
  end

  test "invalid with short title" do
    @book.title = "A"
    assert_not @book.valid?
    assert_includes @book.errors[:title], "is too short (minimum is 2 characters)"
  end

  test "invalid without author" do
    @book.author = ""
    assert_not @book.valid?
    assert_includes @book.errors[:author], "can't be blank"
  end

  test "invalid without price" do
    @book.price = nil
    assert_not @book.valid?
    assert_includes @book.errors[:price], "can't be blank"
  end

  test "invalid with non-positive price" do
    @book.price = 0
    assert_not @book.valid?
    assert_includes @book.errors[:price], "must be greater than zero"
  end

  test "invalid with description over 500 characters" do
    @book.description = "a" * 501
    assert_not @book.valid?
    assert_includes @book.errors[:description], "is too long (maximum is 500 characters)"
  end
end
