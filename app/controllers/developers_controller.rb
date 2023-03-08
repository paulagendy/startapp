class DevelopersController < ApplicationController


  def new
    @developer = Developer.new
  end

  def show
    @developer = Developer.find(params[:id])
    @developer.user = current_user
  end

  def create
    @developer = Developer.new(developer_params)
    @developer.user = current_user

    if @developer.save
       redirect_to developer_path(@developer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def developer_params
    params.require(:developer).peramit(:years_of_experience, :school, :degree)
  end
end
