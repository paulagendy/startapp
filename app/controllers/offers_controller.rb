class OffersController < ApplicationController

  def new
    @offer = Offer.new
    @developer = DeveloperProfile.first
    @developer_profile = @developer.technologies
    @user = @developer.user
  end

  def show
    @offer = Offer.find(params[:id])
    @offer.user = current_user
  end

  def create
    raise
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:houry_rate, :number_of_hours)
  end


end
