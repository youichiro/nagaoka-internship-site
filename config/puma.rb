max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"

rails_env = ENV.fetch('RAILS_ENV') { 'development' }
if rails_env == 'production' || rails_env == 'staging'
  bind "unix://#{Rails.root}/tmp/sockets/puma-#{rails_env}.sock"
  rails_root = Rails.root
  state_path File.join(rails_root, 'tmp', 'pids', "puma-#{rails_env}.state")
  stdout_redirect(
    File.join(rails_root, 'log', "puma-#{rails_env}.log"),
    File.join(rails_root, 'log', "puma-#{rails_env}-error.log"),
    true
  )
  pidfile "tmp/pids/server-#{rails_env}.pid"
else
  port ENV.fetch("PORT") { 3000 }
  pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
end

environment rails_env

# Allow puma to be restarted by `bin/rails restart` command.
plugin :tmp_restart
