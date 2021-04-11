class ProductionDetail < ApplicationRecord
    attr_accessor :detail_price
    before_save :max_discount
    before_save :min_discount
    belongs_to :production
    has_many :card_products
    has_many :cards, through: :card_products
    validates :discount, presence: true

    def max_discount
        self.discount = (discount > 100 ? 100 : discount) 
    end    
    def min_discount
        self.discount =  (discount < 0 ? 0 :discount)
    end
    def detail_price
       if price
            (price - (price * discount / 100 ))
       else  
       end 
    end    

end
