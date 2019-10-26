require "reform"
require "reform/form/dry"

module Hotel::Contract
    class Create < Reform::Form
      include Reform::Form::Dry
  
      property :name
      property :address
      property :stars
  
      validation :default do
        required(:name).filled(:str?)
        required(:address).filled(:str?)
        required(:stars).filled(:int?)
      end
    end
  end
  