class BlogController < ApplicationController

  def index
    @articles = Article.page(params[:page]).per(5)
    
    respond_to do |format|
      format.html
      format.js {}
    end
  end

  def article
    @article = Article.find(params[:id])
    @count_comments = @article.comments.count
  end

  def about
  end
end
