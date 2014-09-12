require 'spec_helper'
require 'github_api_monger/api/index_api'

module GithubApiMonger
  module Api
    describe IndexApi do

      include Rack::Test::Methods

      let(:app) { IndexApi }

      it "returns an index resource" do
        get("/")
        expect(last_response.status).to eq 200
      end
    end
  end
end
