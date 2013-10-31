class Gist

  def initialize(id, access_token)
    @id = id
    @github_access_token = access_token
  end

  def raw_data
    url = "https://api.github.com/gists/#{@id}?access_token=#{@github_access_token}"
    JSON.parse(open(url).read)
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

  def commits
    JSON.parse(open(raw_data["commits_url"]).read).count
  end

  def characters
    raw_data["files"].each_value{|v| return v["size"]}
  end

  def file_name
    raw_data["files"].each_value{|v| return v["filename"]}
  end

  def file_body
    raw_data["files"].each_value{|v| return open(v["raw_url"]).readlines}
  end

  def url
    raw_data["url"]
  end

end
