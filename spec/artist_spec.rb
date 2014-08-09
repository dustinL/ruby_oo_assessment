require 'rspec'
require 'artist'

describe Artist do
  it 'initializes a new artist' do
    test_artist = Artist.new({:name => "The Strokes"})
    test_artist.should be_an_instance_of Artist
  end

  it 'saves a new artist to the list' do
    test_artist = Artist.new({:name => "The Strokes"})
    test_artist.save
    expect(Artist.all).to eq [test_artist]
  end


end
