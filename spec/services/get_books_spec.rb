require 'rails_helper'

describe Book do
  it "returns a 200 success header when the API call is made" do
    response = Book.get_books
    expect(response.code).to(eq(200))
  end

  it "returns books when the API call is made" do
    response = JSON.parse(Book.get_books)
    expect(response["results"]["books"]).to_not(eq(nil))
  end
end
