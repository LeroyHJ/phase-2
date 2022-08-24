class Music
  def initialize 
    @songs = []
  end

  def add(tracks) 
    @songs.push(tracks)
  end

  def show_list
    @songs
  end
end