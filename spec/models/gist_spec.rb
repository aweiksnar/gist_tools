require 'spec_helper'

describe Gist do
  let(:gist){Gist.new(1305321)}

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

end
