class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    self.songs.first
  end
  
  def get_genre_of_first_song
    self.get_first_song.genre
  end

  def song_count
    self.songs.size
    #return the number of songs associated with the artist
  end

  def genre_count
    self.genres.size
    #return the number of genres associated with the artist
  end
end
