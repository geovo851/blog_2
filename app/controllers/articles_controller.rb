class ArticlesController < ApplicationController
  filter_resource_access

  def index
    @articles = Article.page(params[:page]).per(5)

    respond_to do |format|
      format.html
      format.js {}
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id if current_user
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to articles_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :text, :photo, :photo_small)
    end
end
