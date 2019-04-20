class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    @sales = Sale.new(params[sale_params])
    @sales.save
    redirect_to sales_path
  end

  private
    def sale_params
      params.require(:sale).permit(:cod, :detail, :category, :value, :discount, :tax, :total)
    end
end
