require 'sidekiq'
require 'streamio-ffmpeg'

class TranscodeWorker
  include Sidekiq::Worker

  def perform(itemPath,itemTranscodedPath)
  	movie = FFMPEG::Movie.new(itemPath)
    movie.transcode(itemTranscodedPath)
    #movie = FFMPEG::Movie.new("path/to/movie.mov")
    puts "test2"
  end
end
