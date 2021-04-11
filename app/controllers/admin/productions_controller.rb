class Admin::ProductionsController < Admin::ApplicationController
    before_action :require_admin

    def index
        @products = Production.all
    end    

    def new
        @product = Production.new
        # @product_details = @product.production_details.build
    end
    
    def create
        @product = Production.new(product_params)
        if @product.save!
            redirect_to admin_productions_path
        end    
    end 
    def edit
        @product = Production.find_by(id: params[:id])
    end    
    def update
        @product = Production.find_by(id: params[:id])
        if @product.update product_params
            redirect_to admin_productions_path
        end    
    end    


    private
    def product_params
        params.require(:production).permit(:name,:category_id,:description,:image_url,production_details_attributes: [:id,:color,:rom,:ram,:price,:discount,:_destroy])
    end    

end     