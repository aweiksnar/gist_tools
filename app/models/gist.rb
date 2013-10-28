class Gist

  def initialize(id, access_token)
    @id = id
    @github_access_token = access_token
  end

  def raw_data
    url = "https://api.github.com/gists/#{@id}?access_token=#{@github_access_token}"
    @result = JSON.parse(open(url).read)
  end

end
