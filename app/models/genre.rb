class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.uniq.count
  end

  def all_artist_names
    a = Artist.all.map {|a| a.name}
    a.uniq
  end
end
