class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song 
    # helper method, returns an array of songs relevant to the instance the method is called on, and then returns the song that was first associated with the artist instance. 
    self.songs.first
  end
  
  
  def get_genre_of_first_song
    # invokes the earlier helper method and then just call son that object's genre association.
    get_first_song.genre
  end

  def song_count
    #returns the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #returns the number of genres associated with the artist
    self.genres.count
  end
end
