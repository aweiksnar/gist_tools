require 'spec_helper'

describe Gist do
  let(:gist){Gist.new(1305321, ENV['GITHUBTESTTOKEN'])}

  it "should exist when created" do
    expect(gist).not_to be_nil
  end

  describe "#raw_data" do
    it{expect(gist).to respond_to(:raw_data)}

    it "should return JSON data" do
      expect(gist.raw_data.class).to eq(Hash)
      expect(gist.raw_data["id"]).to eq("1305321")
    end
  end

  describe "#comments" do
    it {expect(gist).to respond_to(:comments)}

    it "should return a number" do
      expect(gist.comments.class).to eq(Fixnum)
    end
  end

  describe "#forks" do
    it {expect(gist).to respond_to(:forks)}

    it "should return a number" do
      expect(gist.forks.class).to eq(Fixnum)
    end
  end

  describe "#revisions" do
    it {expect(gist).to respond_to(:revisions)}

    it "should return a number" do
      expect(gist.revisions.class).to eq(Fixnum)
    end
  end

  describe "#age" do
    it {expect(gist).to respond_to(:age)}

    it "should return a number" do
      expect(gist.age.class).to eq(Fixnum)
    end
  end

  describe "#commits" do
    it {expect(gist).to respond_to(:commits)}

    it "should return a number" do
      expect(gist.commits.class).to eq(Fixnum)
    end
  end

  describe "#characters" do
    it {expect(gist).to respond_to(:characters)}

    it "should return a number" do
      expect(gist.characters.class).to eq(Fixnum)
    end
  end
end
