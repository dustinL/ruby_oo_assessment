require 'rspec'
require 'artist'
require 'album'

describe Artist do
  it 'initializes a new artist' do
    test_artist = Artist.new({:name => "The Strokes"})
    test_artist.should be_an_instance_of Artist
  end

  it 'shows the name of the artist' do
    test_artist = Artist.new({:name => "The Strokes"})
    expect(test_artist.name).to eq "The Strokes"
  end

  it 'saves a new artist to the list' do
    test_artist = Artist.new({:name => "The Strokes"})
    test_artist.save
    expect(Artist.all).to eq [test_artist]
  end

  it 'adds an album to an artist collection' do
    test_artist = Artist.new({:name => "The Strokes"})
    test_album = Album.new("Is This It")
    test_artist.add_album(test_album)
    expect(test_artist.albums).to eq [test_album]
  end

  it 'displays the albums for a given artist' do
    test_artist = Artist.new({:name => "The Strokes"})
    test_album = Album.new("Is This It")
    test_artist.add_album(test_album)
    test_album2 = Album.new("Room on Fire")
    test_artist.add_album(test_album2)
    expect(test_artist.albums).to eq [test_album, test_album2]
  end
end
