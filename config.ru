require File.dirname(__FILE__) + '/config/boot'
require 'github_api_monger/api'

run Rack::URLMap.new(
  '/' => GithubApiMonger::API
)
