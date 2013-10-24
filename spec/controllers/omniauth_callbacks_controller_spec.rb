require "spec_helper"

describe OmniauthCallbacksController do
  describe "#github" do
    o = OmniauthCallbacksController.new
    it{expect(o).to respond_to(:github)}
  end
end
