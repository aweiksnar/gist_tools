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
end
