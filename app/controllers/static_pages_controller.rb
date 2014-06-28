class StaticPagesController < ApplicationController
  def homepage  
  	@homepage = home_url	
  end

  def about
  end

  def projects
  end
end
