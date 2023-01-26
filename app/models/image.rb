class Image < ApplicationRecord
  has_many :comments, as: :commentable
  dragonfly_accessor :image
end
