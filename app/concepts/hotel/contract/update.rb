require "reform"
require "reform/form/dry"

module Hotel::Contract
    class Update < Reform::Form
      include Reform::Form::Dry
  
      property :address
      property :stars
  
      validation :default do
        required(:address).filled(:str?)
        required(:stars).filled(:int?)
      end
    end
  end
  