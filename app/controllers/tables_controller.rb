class TablesController < ApplicationController
  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)

    if @table.save
      redirect_to @table, notice: "Mesa salva."
    else
      flash[:alert] = "Erro ao cadastrar mesa."

      render "new"
    end
  end

  def show
    @table = Table.find(params[:id])
  end

  private
  def table_params
    params.require(:table).permit(:description, :slots, :company)
  end
end
