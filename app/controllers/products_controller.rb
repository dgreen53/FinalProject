class ProductsController < ApplicationController
  def index
    @servers = ServerSpec.all.order(:bill_rate).paginate(:page => params[:page], :per_page => 4)
  end
end
