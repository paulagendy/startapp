class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user = current_user

		if @project.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def project_params
		params.require(:project).permit(:name, :description, :industry, :spoken_language_id, :number_of_developers, :user_id)
	end
end