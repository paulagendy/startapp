class ProjectsController < ApplicationController
  def show
    @projects = project.find
  end
end
