class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    a = Artist.find_by(name: "Drake")
    if a
      self.artist = a
    else
      Artist.create(name: "Drake")
      a = Artist.find_by(name: "Drake")
      self.artist = a
    end
  end
end