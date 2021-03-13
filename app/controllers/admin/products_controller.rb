module Admin
  class ProductsController < ::Admin::ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]

    # GET /products
    def index
      @products = Product.all
    end

    # GET /products/1
    def show
    end

    # GET /products/new
    def new
      @product = Product.new
    end

    # GET /products/1/edit

  end
end
