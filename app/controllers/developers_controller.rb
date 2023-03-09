class DevelopersController < ApplicationController
  def new
    @developer = DeveloperProfile.new
  end

  def create
    @developer = DeveloperProfile.new(developer_params)
    @developer.user = current_user

    if @developer.save
      redirect_to developer_path(@developer)
    else
      render :new, status: 422
    end
  end

  private

  def developer_params
    params.require(:developer).permit(:school, :degree, :technology, :years_of_experiance)
  end

end
