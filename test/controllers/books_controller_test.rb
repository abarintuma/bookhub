require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
    assert_select "h1", "All Books"
  end

  test "should get new" do
    get new_book_url
    assert_response :success
    assert_select "h1", "Add a New Book"
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: {
        book: {
          title: "Refactoring",
          author: "Martin Fowler",
          description: "Improving the design of existing code.",
          price: 47.99,
          published_at: "2018-11-20"
        }
      }
    end

    assert_redirected_to book_url(Book.last)
    follow_redirect!
    assert_select "h1", "Refactoring"
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
    assert_select "h1", @book.title
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
    assert_select "h1", "Edit Book"
  end

  test "should update book" do
    patch book_url(@book), params: {
      book: {
        title: "Updated Title"
      }
    }
    assert_redirected_to book_url(@book)
    @book.reload
    assert_equal "Updated Title", @book.title
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
    assert_response :see_other
  end
end
