class CategoriesController < ApplicationController
  before_action :find_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_path, notice: "Categoria foi criada."
    else
      flash[:alert] = "Categoria não pode ser criada."

      render "new"
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: 'Categoria atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      redirect_to categories_url, notice: 'Categoria excluida com sucesso.'
    end
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
