class Gist

  def initialize(id)
    @id = id
  end

  def raw_data
    url = "https://api.github.com/gists/#{@id}"
    @result = JSON.parse(open(url).read)
  end

end
