class OrdersController < ApplicationController

def index
  @orders = Order.paginate(page: params[:page]).per_page(20)
end

end
