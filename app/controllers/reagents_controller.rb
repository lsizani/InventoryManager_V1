class ReagentsController < ApplicationController

  def index
    @view = "welcome/index"
  end

  def create
    @view = "reagents/reagent"
  end

  def edit

  end

end
