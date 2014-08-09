require 'rspec'
require 'album'

describe Album do
  it 'initializes an album with a name' do
    test_album = Album.new("Is This It")
    test_album.should be_an_instance_of Album
  end

end
