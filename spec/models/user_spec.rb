require 'spec_helper'

describe User do
  it "should exist when created" do
    u = User.new(email: "test@example.com", password: "test_pass")
    expect(u.save).to eq(true)
    expect(u.id.class).to eq(Fixnum)
    u.destroy
  end

  it "should require an email and password to sign up" do
    u = User.new(email: "test2@example.com")
    expect(u.save).to eq(false)
    u = User.new(password: "test_pass")
    expect(u.save).to eq(false)
  end

  describe "#raw_gists" do
    user = User.new
    it{expect(user).to respond_to(:raw_gists)}

    it "should return JSON data" do
      user = User.create(email: "test@example.com", password: "password", github_username: "octocat")
      expect(user.raw_gists.class).to eq(Array)

      data = user.raw_gists.map{|d| d }
      expect(data.first.class).to eq(Hash)

      expect(data.first["id"]).to eq("1305321")
    end
  end
end
