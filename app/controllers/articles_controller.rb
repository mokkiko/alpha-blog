class ArticlesController < ApplicationController

before_action :set_article, only: [:show, :edit, :update, :destroy]


def show
##  byebug
#  @article = Article.find(params[:id])
end

def index
  @articles = Article.paginate(page: params[:page], per_page: 5)
end

def new
  @article = Article.new

end


def edit
#byebug
#  @article = Article.find(params[:id])
end


def create
  @article = Article.new(article_params)
  @article.user = User.first
  if @article.save
      flash[:notice] = "article was created seccesfully."
      redirect_to @article
  else
      render 'new'
  end
end

def update
#  byebug
#  @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "articl updated successfully"
      redirect_to @article
    else
        render 'edit'
    end

  end

def destroy
#  @article = Article.find(params[:id])
  @article.destroy
  redirect_to articles_path
end

private

def set_article
  @article = Article.find(params[:id])
end

def article_params
  params.require(:article).permit(:title, :discription)
end

end
