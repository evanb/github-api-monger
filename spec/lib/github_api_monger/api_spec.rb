require 'spec_helper'
require 'github_api_monger/api'

module GithubApiMonger
  describe API do

    include Rack::Test::Methods

    let(:app) { API }

    it "returns an index resource" do
      get("/")
      expect(last_response.status).to eq 200
    end

  end
end
