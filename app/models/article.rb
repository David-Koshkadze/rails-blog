class Article < ApplicationRecord
  include Visible

  # has_many relationship with comments. 
  # When deleted remove associated objects in that case associated comments
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
