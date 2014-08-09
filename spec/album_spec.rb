require 'rspec'
require 'album'

describe Album do
  it 'initializes an album with a name' do
    test_album = Album.new("Is This It")
    test_album.should be_an_instance_of Album
  end

  it 'saves the album' do
    test_album = Album.new("Is This It")
    test_album.save
    expect(Album.all).to eq [test_album]
  end

end
