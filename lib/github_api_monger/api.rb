require 'grape'

require_relative 'api/rumours_api'

module GithubApiMonger
  class API < Grape::API
    content_type :json, 'application/json'
    default_format :json

    desc 'api index'
      get '/' do
        {
          :_links => {
            :self => {
              :href => request.url,
              :title => 'This index page'
            },
            :rumours => {
              :href => request.url + "rumours",
              :title => "Rumours feed"
            }
          }
        }
      end

    mount Api::RumoursApi

  end
end
