class WelcomeController < ApplicationController

  def index
     @reagents = Reagent.select("id","reagent_name", "manufacturer", "catalog_no", "lot_no", "delivered_date", "expiration_date",
                                "amount_delivered", "amount_delivered", "storage_location")
     @view = "welcome/index"
  end

end
