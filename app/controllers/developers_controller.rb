class DevelopersController < ApplicationController
  def show
    @developer = DeveloperProfile.find(params[:id])
  end

  def developer_pic
    @developers.all
  end

  private

  def developer_params
    params.require(:developer).permit(:years_of_experience, :school, :degree)
  end
end
