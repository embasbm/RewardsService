class RewardsServiceController < ApplicationController
  def index
    @customers = Customer.all
  end


end
