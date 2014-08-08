class Artist

  attr_reader :name, :albums

  def new_artist (artist_name)
    @name = artist_name[:name]
    @albums = []
  end

end

