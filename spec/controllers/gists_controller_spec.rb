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

    it "renders the index template" do
      get :index
      response.should render_template("index")
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', id: "7171195"
      response.should be_success
    end

    it "renders the show template" do
      get 'show', id: "7171195"
      response.should render_template("show")
    end
  end
end
