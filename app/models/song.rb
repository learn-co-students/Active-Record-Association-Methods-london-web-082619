class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name # returns the actual name attribute of the genre associated with the instance of song that the method is called on, rather than returning the genre object (which would include the id and whatever other attributes that each genre might have - in this case just ID)
  end

  def drake_made_this
    # this invokes the ActiveRecord method find_or_create_by - which we manually built in earlier labs - the arguments for this are to give the attribute we want to find/create by, which is name, and then as a string the actual name. Then we are setting the artist association of the instance the method is called on to be Drake, creating it first if 
    # no Drake artist was found
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake


  end
end