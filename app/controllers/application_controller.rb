class ApplicationController < ActionController::Base
  before_action :set_search

  def set_search
    @search = Recipe.ransack(params[:q])
    @recipes = @search.result
  end

end
