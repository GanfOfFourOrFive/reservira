class LocalesController < ApplicationController

  def index
    @locales = Locale.all
  end

  def new
    @locale = Locale.new
  end

  def create
    @locale = Locale.new(locale_params)

    if @locale.save
      redirect_to @locale, notice: "Localidade foi criada."
    else
      flash[:alert] = "Localidade não pode ser criada."
      render "new"
    end
  end

  def show
    @locale = Locale.find(params[:id])
  end

  private

  def locale_params
    params.require(:locale).permit(:city, :address)
  end

end

