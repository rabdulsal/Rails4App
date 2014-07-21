class StaticPagesController < ApplicationController
  def homepage  
  	@homepage = home_url	
  end

  def about
    @projects = Project.all
    @proj_main_pic = @projects.last.images.first
  end

  def projects
  end

  def alert
  	@controller_name = "static-pages"
    @action_name = "alert"
  end

  def rock_paper_scissors
  	@controller_name = "static-pages"
    @action_name = "rock-paper-scissors"
  end
end
