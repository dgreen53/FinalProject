class ProductsController < ApplicationController
  def index
    @servers = ServerSpec.all.order(:bill_rate)
  end
end
