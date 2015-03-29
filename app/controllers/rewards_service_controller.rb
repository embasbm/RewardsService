class RewardsServiceController < ApplicationController
  def index
    @customers = Customer.all
    @rewards = Reward.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def rewards_available
    elgibility = elegibility_service_stub
    customer = Customer.find(params[:customer][:customer_id])
    if customer.nil? # in case dropdown is removed by textfield
      @selected_rewards = 'not valid account number'
      return
    end
    case elgibility
      when 1
        @selected_rewards = customer.get_relevant_rewards
      when 2
        @selected_rewards = nil
      when 3
        @selected_rewards = nil
      else
        @selected_rewards = 'not valid account number'
    end
    respond_to do |format|
      format.js
    end
  end

  # mock or stub of the EligibilityService interface
  def elegibility_service_stub
    rand(1..4)
  end
end
