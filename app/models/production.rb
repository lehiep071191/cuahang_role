class Production < ApplicationRecord  
    belongs_to :category 
    has_many :production_details, dependent: :destroy
    accepts_nested_attributes_for :production_details
end
