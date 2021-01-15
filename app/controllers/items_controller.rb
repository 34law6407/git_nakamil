class ItemsController < ApplicationController
    
    def index
         @items = Item.order("created_at DESC")
    end

    def new
        @item = Item.new
    end
    
    def create
        Item.create(name: item_params[:name])
    end
    
    private
    def item_params
        params.require(:item).permit(:name)
    end
    
    
end
