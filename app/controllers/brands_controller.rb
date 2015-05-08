class BrandsController < ApplicationController
  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      flash[:success] = "Success! A new brand was added"
      redirect_to root_path
    end
  end

  private

    def brand_params
      params.permit(:name, :set_standard_price)
    end
end
