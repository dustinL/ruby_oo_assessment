class Album

  attr_reader :name
  @@albums = []

  def initialize(title)
    @name = title
  end

  def self.all
    @@albums
  end

  def save
    @@albums << self
  end

end
