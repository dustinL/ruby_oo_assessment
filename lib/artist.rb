class Artist

  attr_reader :name, :albums
  @@artists = []

  def initialize (attributes)
    @name = attributes[:name]
    @albums = []
  end

  def self.all
    @@artists
  end

  def save
    @@artists << self
  end

end

