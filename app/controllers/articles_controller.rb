# Standard CRUD actions are placed in the following order:
# 1. index
# 2. show
# 3. new
# 4. edit
# 5. create
# 6. update
# 7. destroy

class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :text))
    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
