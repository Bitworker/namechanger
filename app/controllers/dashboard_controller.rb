class DashboardController < ApplicationController
  before_filter :config_api
  
  def show
    @star = Tmdb::Person.popular[rand(0..19)]
  end
  
  def reload
    redirect_to :back
  end
  
  protected
  
  def config_api
    Tmdb::Api.key("8b893016b1b81c808208f53339ef5d99")
    Tmdb::Api.language("de")
  end
end
