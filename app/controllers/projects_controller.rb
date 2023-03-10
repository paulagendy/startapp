class ProjectsController < ApplicationController
  def
	def new
		@project = Project.new
    # @project.project_technologies.build unless @project.project_technologies.any?
	end

  def show
    @project = Project.find(params[:id])
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

  private

  def project_params
    params.require(:project).permit(:name, :description, :industry, :spoken_language_id, :number_of_developers, technology_ids:[])
  end
end
