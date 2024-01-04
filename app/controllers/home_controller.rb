class HomeController < ApplicationController
  def index
    @dev = []

    if params[:q].present?
      dev_username = params[:q][:username]
      @dev = GithubService.search(dev_username)
    end
  end
end
