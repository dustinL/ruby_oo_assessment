require './lib/artist'
require './lib/album'


def main_menu

  loop do
    puts "\n***Album Collection***"

    puts "Press '1' to add an album"
    puts "Press '2' to view your collection"
    puts "Press '3' to search your collection"
    puts "Press 'x' to exit"

    user_decision = gets.chomp

    if user_decision == '1'
      new_album
    elsif user_decision == '2'
      view_collection
    elsif user_decision == '3'
      search_collection
    elsif user_decision == 'x'
      exit
    else
      puts "\nInvalid entry"
    end
  end
end

def new_album
  puts "\nPlease enter the artist name"
  artist_input = gets.chomp
  new_artist = Artist.new(artist_input)
  new_artist.save

  puts "\nPlease enter album name"
  album_input = gets.chomp
  new_album = Album.new(album_input)
  new_album.save
  new_artist.add_album(new_album)

  puts "\nNew album added\n"
end

main_menu
