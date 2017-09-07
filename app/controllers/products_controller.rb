class ProductsController < ApplicationController
def index
	@catagories = Catagory.all
	@catagorytypes= CatagoryType.all
	@products = Product.all
end

def category_products
	@catagorytype= CatagoryType.find params[:format]
	@products = @catagorytype.products
	render :index
end

def show
	@product = Product.find(params[:id])   
end

end
