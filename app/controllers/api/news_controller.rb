class Api::NewsController < ApplicationController

  def index
    @news = HTTP
      .headers(
        "X-Api-Key" => Rails.application.credentials.the_guardian_api[:api_key]).get("https://content.guardianapis.com/search?q=#{params[:search]}").parse
    render json: @news
  end

end