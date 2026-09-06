class Book < ApplicationRecord
  validates :title, presence: true,
    length: {minimum: 2,
             message: "is too short (minimum is 2 characters)"}
  validates :author, presence: true
  validates :price, presence: true,
    numericality: {greater_than: 0,
                   message: "must be greater than zero"}
  validates :description,
    length: {maximum: 500,
             message: "is too long (maximum is 500 characters)"},
    allow_blank: true
end
