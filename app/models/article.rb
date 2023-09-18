class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minumum: 10 }
end
