class Book < ApplicationRecord
  validates :name, presence: true
  validates :body, presence: true
end
