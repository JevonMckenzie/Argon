class Comment < ApplicationRecord
  belongs_to :firstformmath
  belongs_to :user
  #has_many :comments, as: :commentable
  
end
