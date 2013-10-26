require 'spec_helper'

describe GistsController do
  before(:each) do
    controller.stub(:current_user).and_return(User.create(email: "test@example.com", password: "password", github_username: "octocat"))
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end
end
