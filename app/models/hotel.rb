class Hotel < ApplicationRecord
    has_many :reviews, :dependent => :destroy
end
