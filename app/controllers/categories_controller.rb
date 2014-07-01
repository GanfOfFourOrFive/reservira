class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category, notice: "Categoria foi criada."
    else
      flash[:alert] = "Categoria não pode ser criada."

      render "new"
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def show
    @category = Category.find(params[:id])
  end
end
