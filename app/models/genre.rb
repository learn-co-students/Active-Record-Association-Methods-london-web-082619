class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # returns the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # returns the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # returns an array of strings containing every musician's name by mapping (transforming) over every artist and calling the .name attribute.
    self.artists.map {|artist| artist.name}
  end
end
