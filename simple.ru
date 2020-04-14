require './app'
# A Web process always runs as client, no need to configure server
Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0', size: 1 }
end

require 'sidekiq/web'
run Sidekiq::Web
