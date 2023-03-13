class ProjectsController < ApplicationController
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
      set_top_picks
       redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :industry, :spoken_language_id, :number_of_developers, technology_ids:[])
  end

  def set_top_picks
    # getting the projects spoken language and all the developers that have the same languages
    @language = @project.spoken_language
    @dev_spoken_langs = DeveloperProfileSpokenLanguage.where(spoken_language: @project.spoken_language)
    @dev_profiles = @dev_spoken_langs.map(&:developer_profile)
    # get t4he prokects all the project tecnologies and then find the developers with the same tecnologies
    @technology = @project_technology.technology
    raise
    # @developer_technologies =


    # devSpokenLang = DeveloperProfileSpokenLanguage.all



    # filter developer profiles by spoken langueage
    # filter by project tecnologies
    # create 3 top pick instances for number_of_developers
  end
end
