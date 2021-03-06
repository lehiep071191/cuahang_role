class Admin::CategoriesController < Admin::ApplicationController
    before_action :require_admin
    before_action :set_category, only: [:edit,:update,:destroy,:show]
    
    def index
        @categories = Category.all
    end    
    def new
        @category = Category.new
    end
    
    def create
        @category = Category.new category_params
        if @category.save
            redirect_to admin_catefories_path
        else
            render :new
        end    
    end
    def show

    end    
    
    def edit


    end
    
    def update
        if @category.update category_params
            redirect_to admin_catefories_path
        else
            render :edit
        end    
    end
    
    def destroy


    end    

    private
    def category_params
        params.require(:catefory).permit(:category_name)
    end    
    def set_category
        @category = Category.find_by id: params[:id]
    end    
end    