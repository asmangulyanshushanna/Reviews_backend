require "reform"
require "reform/form/dry"

module Review::Contract
    class Update < Reform::Form
      include Reform::Form::Dry
  
      property :comment
      property :rating
  
      validation :default do
        required(:comment).filled(:str?)
        required(:rating).filled(:int?)
      end
    end
  end