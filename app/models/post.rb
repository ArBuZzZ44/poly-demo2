class Post < ApplicationRecord
  has_many :comments, as: :commentable
  validates :content, presence: true, length: {maximum: 400}
end
