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

  describe "#file_name" do
    it {expect(gist).to respond_to(:file_name)}

    it "should return a string" do
      expect(gist.file_name.class).to eq(String)
    end
  end

  describe "#file_body" do
    it {expect(gist).to respond_to(:file_body)}

    it "should return an array" do
      expect(gist.file_body.class).to eq(Array)
    end
  end

  describe "#url" do
    it {expect(gist).to respond_to(:url)}

    it "should return a string" do
      expect(gist.url.class).to eq(String)
    end
  end

  describe "#description" do
    it {expect(gist).to respond_to(:description)}

    it "should return a string" do
      expect(gist.description.class).to eq(String)
    end
  end


end
