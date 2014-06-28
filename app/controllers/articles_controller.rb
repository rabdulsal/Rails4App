class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]


  def index
  	@articles = Article.all
  end

  def new
    @articles = Article.all
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)

    @article.image_from_url(params[:image_url])
 
  	@article.save
  	
  	redirect_to @article
  end

  def edit
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

    @articles = Article.all

  	if @article.save

	  	respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @article }
	    end
    end
	end
  
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_article
      @article = Article.find(params[:id])
  end

  def article_params
  	params.require(:article).permit(:title, :description, :tags, :image)
  end
end
