class OrdersController < ApplicationController
  require 'rqrcode'


  def new

  end

  def index
    #@qr = RQRCode::QRCode.new( 'my string to generate', :size => 4, :level => :h )
    #redirect_to :controller => 'welcome', :action => 'index'

    @orders = Order.all
    @view = "orders/index"
  end


end