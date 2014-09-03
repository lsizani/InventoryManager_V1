class ReagentsController < ApplicationController

  def index
    @view = "welcome/index"
  end

  def create
    @reagent = Reagent.new(create_params)
    @reagent.save
    redirect_to "welcome/index"
  end

  def edit
     @reagent = Reagent.find(params[:id])
  end

  def update
    @reagent = Reagent.find(params[:id])

    if @reagent.update(create_params)
      redirect_to @reagent
    else
      render "reagents/edit"
    end
  end

  def show
    @reagents = Reagent.select("id","reagent_name", "manufacturer", "catalog_no", "lot_no", "delivered_date", "expiration_date",
                               "amount_delivered", "amount_delivered", "storage_location")
    @view = "welcome/index"
  else
  end
  private
  def create_params
     params.require(:reagent).permit(:requested_by, :requested_date, :amount_requested, :reagent_name, :order_no,
                                     :lot_no, :manufacturer, :catalog_no, :supplier, :ordered_date,
                                     :amount_delivered, :delivered_date)
  end

end