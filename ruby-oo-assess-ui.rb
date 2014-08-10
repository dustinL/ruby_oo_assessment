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
  puts "\nPlease enter the artist name:"
  artist_input = gets.chomp
  new_artist = Artist.new({:name => artist_input})
  new_artist.save

  puts "\nPlease enter #{new_artist.name} album name:"
  album_input = gets.chomp
  new_album = Album.new(album_input)
  new_album.save
  new_artist.add_album(new_album)

  puts "\n#{new_album.name} added!\n"
end

def view_collection
  puts "\nHere is your music collection:\n"
  Artist.all.each_with_index do |artist, index|
    puts "#{index+1}. #{artist.name}"
    artist.albums.each do |album|
      puts album.name
    end
  end
end

def search_collection
  puts "\nEnter artist name to see their albums\n"
  user_input = gets.chomp
  selected_artist = Artist.all.select { |artist| user_input == artist.name }

  if selected_artist.length < 1
    puts "\nNo match found. Note: Names are cAsE sensitive\n"
    search_collection
  else
    selected_artist.first.albums.each_with_index { |album, index| puts "#{index+1}. #{album.name} \n"}
  end

end

main_menu
