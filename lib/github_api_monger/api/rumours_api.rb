require 'grape/api'

module GithubApiMonger
  module Api

    class RumoursApi < Grape::API
      content_type :json, 'application/json'
      default_format :json

      desc 'fetch a feed of rumours'
      get '/rumours' do
        {
          :identity => [
            {
              :id => "github-api-monger",
              :type => "service",
              :authority => "0.7",
              :github => "github.com:evanb/github-api-monger.git"
            }
          ],
          :_links => {
            :self => {
              :href => request.url,
              :title => 'rumour feed'
            }
          }
        }
      end

    end
  end
end
