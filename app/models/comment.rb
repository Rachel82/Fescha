class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  scope :rating_desc, ->	{order(rating: :desc)}
  scope	:rating_desc.reverse,	->	{order(rating: :desc.reverse)}
end
