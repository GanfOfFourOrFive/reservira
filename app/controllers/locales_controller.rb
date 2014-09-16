class LocalesController < ApplicationController
  before_action :find_locale, only: [:edit, :update, :destroy]

  def index
    @locales = Locale.all
  end

  def new
    @locale = Locale.new
  end

  def create
    @locale = Locale.new(locale_params)

    if @locale.save
      redirect_to locales_path, notice: "Localidade foi criada."
    else
      flash[:alert] = "Localidade não pode ser criada."
      render "new"
    end
  end

  def edit

  end

  def update
    if @locale.update(locale_params)
        redirect_to locales_path, notice: 'Alterado com sucesso.'
     else
       render :edit
     end
  end

  def destroy
    @locale.destroy
    redirect_to locales_url, notice: 'Feiiitooooo.'
  end

  private

  def locale_params
    params.require(:locale).permit(:city, :address)
  end

  def find_locale
    @locale = Locale.find(params[:id])
  end
end
