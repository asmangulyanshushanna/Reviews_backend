class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :hotel_id
end
