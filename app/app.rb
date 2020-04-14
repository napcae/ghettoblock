require 'sinatra'
require 'streamio-ffmpeg'
require_relative 'workers/transcode_worker.rb'

get '/' do
  #puts "hello world"
  "yo?"  #{movie.duration} Movie valid? #{movie.valid?} info: #{movie.video_stream}"
end



get '/transcode/:item' do
  ## will execute function to transcode movie in background and create HLS files
  "will start to transcode #{params['item']}"
  system("touch", "#{params['item']}")
end

get '/background' do
	"yeaaah, about that..."
end

get '/tt/:user' do
   # a = Thread.new { movie.transcode("movie.mp4") { |progress|  progress }}
	 # a.join
	   TranscodeWorker.perform_async("./data/test.mov","#{params['user']}.mp4")
   "p: done"
end
get '/room/:user' do
  #username = params['user'].capitalize
  erb :index, :locals => {:username => params['user']}
end