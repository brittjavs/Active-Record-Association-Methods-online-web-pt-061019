class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.size
  end

  def all_artist_names
    self.artists.collect { |artist| artist.name }
    # return an array of strings containing every musician's name
  end
end
