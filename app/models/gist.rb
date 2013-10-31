class Gist

  def initialize(id, access_token)
    @id = id
    @github_access_token = access_token
  end

  def raw_data
    url = "https://api.github.com/gists/#{@id}?access_token=#{@github_access_token}"
    @result = JSON.parse(open(url).read)
  end

  def comments
    raw_data["comments"]
  end

  def forks
    raw_data["forks"].count
  end

  def revisions
    raw_data["history"].count
  end

  def age
    ((Time.now - Time.parse(raw_data["created_at"])) / 60 / 60).round
  end

end
