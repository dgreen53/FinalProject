class ProductsController < ApplicationController
  def index
    @servers = ServerSpec.all
  end
end
