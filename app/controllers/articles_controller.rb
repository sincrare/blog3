class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.order_by_descending
  end

  def show
    @article = Article.find(params[:id])
  end

end
