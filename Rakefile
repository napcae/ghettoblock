task default: %w[run]

task :run do
  system("docker-compose", "up", "-d")
  system("shotgun")
end
