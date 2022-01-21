server "ldpd-wp-dev1.cul.columbia.edu", user: fetch(:remote_user), roles: %w{web app}
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :url, 'https://socialtext-dev.cul.columbia.edu'
