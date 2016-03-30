class CookiesController < ApplicationController

  def index
    @cookies = Cookie.all
  end

  def show
  	@cookie = Cookie.find(params[:id])
  	@cookie_recipe = Recipe.where(cookie_id: @cookie)
  	@ingredients = Ingredient.all
  end
	
end
