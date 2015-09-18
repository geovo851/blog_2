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
    @author = params[:author]
  end

  def edit
    @article = Article.find(params[:id])
    @author = params[:author]
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id if current_user
    @author = params[:author]

    if @article.save
      if @author == "true"
        redirect_to root_path
      else
        redirect_to articles_path
      end
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    @author = params[:author]

    if @article.update(article_params)
      if @author == "true"
        redirect_to root_path
      else
        redirect_to articles_path
      end
    else
      render 'edit'
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    @author = params[:author]

    if @author == 'true'
      redirect_to root_path
    else
      redirect_to articles_path
    end
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :text, :photo, :photo_small)
    end
end
