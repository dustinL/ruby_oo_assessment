require 'rspec'
require 'artist'

describe Artist do
  it 'initializes the artist name with an empty album array' do
    test_artist = Artist.new
    test_artist.should be_an_instance_of Artist
  end

end
