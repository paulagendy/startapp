class OffersController < ApplicationController

  def new
    @offer = Offer.new
    @developer_profile = DeveloperProfile.find(params[:developer_id])
    @developer_technologies = @developer_profile.technologies
    @user = @developer_profile.user
  end

  def show
    @offer = Offer.find(params[:id])
    @offer.user = current_user
  end

  def create
    @developer_profile = DeveloperProfile.find(params[:developer_id])
    @offer = Offer.new(offer_params)
    @offer.developer_profile = @developer_profile
    if @offer.save
      redirect_to project_path(@offer.project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to project_path(@offer.project)
  end

  private

  def offer_params
    params.require(:offer).permit(:houry_rate, :Number_of_hours,:status, :project_id)
  end


end
