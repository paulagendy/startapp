class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user = current_user
	end

	private

	def project_params
		params.require(:project).permit(:name, :description, :industry, :spoken_language_id, :number_of_developers, :user_id)
	end
end