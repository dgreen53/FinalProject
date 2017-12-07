class ProductsController < ApplicationController
  def index
    @servers = if params[:term]
      ServerSpec.where('name LIKE ? OR description LIKE ?', "%#{params[:term]}%", "%#{params[:term]}%").order(:bill_rate).paginate(:page => params[:page], :per_page => 4)
    else
      @servers = ServerSpec.all.order(:bill_rate).paginate(:page => params[:page], :per_page => 4)
    end
  end
end
