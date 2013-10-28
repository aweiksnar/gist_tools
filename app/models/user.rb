require "active_record_helpers.rb"

class User < ActiveRecord::Base
  require 'open-uri'
  require 'json'
  include Authentication::ActiveRecordHelpers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  def raw_gists
    url = "https://api.github.com/users/#{self.github_username}/gists?access_token=#{self.github_access_token}"
    @result = JSON.parse(open(url).read)
  end
end
