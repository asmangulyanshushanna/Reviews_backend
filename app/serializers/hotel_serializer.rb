class HotelSerializer < ActiveModel::Serializer
  has_many :reviews
  attributes :id, :name, :address, :stars, :reviews
end
