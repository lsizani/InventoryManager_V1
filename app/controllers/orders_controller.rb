class OrdersController < ApplicationController
  require 'rqrcode'


  def new

  end

  def index
    @qr = RQRCode::QRCode.new( 'my string to generate', :size => 4, :level => :h )
  end


end