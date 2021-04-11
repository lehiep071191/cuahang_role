class CardProduct < ApplicationRecord
    attr_accessor :unit_price
    belongs_to :card
    belongs_to :production_detail 

    def unit_price
        production_detail.detail_price * quantity
    end    
end
