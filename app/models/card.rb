class Card < ApplicationRecord
    belongs_to :user
    has_many :card_products
    has_many :production_details, through: :card_products
    attr_accessor :total
      
    def total
        a = []
        self.card_products.each do |item|
            a.push(item.unit_price)
        end  
        return a.sum  
    end    
end
