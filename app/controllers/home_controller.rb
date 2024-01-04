class HomeController < ApplicationController
  def index
    dev = []

    if params[:q].present?
      dev_username = params[:q][:username]
      dev_data = GithubService.search(dev_username)
      puts dev_data
    end
  end
end
