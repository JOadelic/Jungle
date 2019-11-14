class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  
  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  def create
    @categories = Category.new({name: params[:name]})

    if @categories.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    
end