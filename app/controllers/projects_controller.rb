class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:new, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.order(created_at: :desc)
    @proj_main_pic = @projects.find(4)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    # Load specific Javascript for each project
    @controller_name = "projects"
    @action_name = @project.abrv
    @partial = @project.abrv
  end

  # GET /projects/new
  def new
    @project = Project.new
    3.times { @project.images.build }
  end

  # GET /projects/1/edit
  def edit
    3.times { @project.images.build }
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def rock_paper_scissors
    @controller_name = "projects"
    @action_name = "rock-paper-scissors"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :instructions, :project_type, :language, 
                                                  :website, article_attributes: [ :id,
                                                                                  :title, 
                                                                                  :description,
                                                                                  :tags,
                                                                                  :image,
                                                                                  :_destroy
                                                                                ], images_attributes: [:id, :asset, :main_image, :_destroy])
    end
end
