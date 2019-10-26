require "reform"
require "reform/form/dry"

module Review::Contract
    class Create < Reform::Form
      include Reform::Form::Dry
  
      property :comment
      property :rating
      property :hotel_id
      
      validation :default do
        required(:comment).filled(:str?)
        required(:rating).filled(:int?)
        required(:hotel_id).filled(:int?)
      end
    end
  end