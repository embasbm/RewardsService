class SuscriptionsController < ApplicationController
  before_action :set_suscription, only: [:edit, :update]
  def index
    @suscriptions = Suscription.all
  end

  def new
    @suscription = Suscription.new
  end

  def edit
  end

  def create
    @suscription = Suscription.new(suscription_params)

    respond_to do |format|
      if @suscription.save
        format.html { redirect_to suscriptions_path, notice: 'Suscription was successfully created' }
        format.json { render :index, status: :created, location: @suscriptions}
      else
        format.html { render :new }
        format.json { render json: @suscription.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @suscription.update(suscription_params)
        format.html { redirect_to suscriptions_path, notice: 'Suscription was successfully updated' }
        format.json { render :index, status: :ok, location: @suscriptions}
      else
        format.html { render :edit }
        format.json { render json: @suscription.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_suscription
      @suscription = Suscription.find(params[:id])
    end

    def suscription_params
      params.require(:suscription).permit(:customer_id, :channel_id, :expire_date)
    end
end
