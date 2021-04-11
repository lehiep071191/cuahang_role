module ApplicationHelper
    def categories
        Category.select(:id,:category_name)
    end    
    def roles
        Role.select(:id, :role_name)
    end   
    def image_url(url) 
        url.nil? ? "https://previews.123rf.com/images/krustovin/krustovin1905/krustovin190500061/122378999-creative-colorful-smartphone-logo-design-concept.jpg" : url
    end    
    def color_text(cs,c)
        if (cs == c)
            return 'color_text'
        end    
    end 
    def current_cart
        if current_user.present?
            if session[:card_id].present?
                cart = Card.find_by id: session[:card_id]
            elsif cookies.permanent.signed[:cart_id].present?   
                cart = Card.find_by id: cookies.signed[:card_id]
            elsif current_user.card.present?    
                cart = current_user.card

            else
                cart = Card.new    
                cart.user = current_user
                cart.save
            end   
            @current_cart = cart
        end    
        @current_cart
    end     
end
