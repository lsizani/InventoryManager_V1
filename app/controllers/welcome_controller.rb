class WelcomeController < ApplicationController

  def index
     @reagents = Reagent.all
     @view = "welcome/index"
  end

end
