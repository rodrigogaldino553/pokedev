# frozen_string_literal: true

class GithubService
  require 'net/http'

  def self.get_user(username)
    url = "https://api.github.com/users/#{username}"
    uri = URI(url)
    response = Net::HTTP.get(uri)

    JSON.parse(response)
  end
end

