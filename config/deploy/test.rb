server "ldpd-wp-test1.cul.columbia.edu", user: fetch(:remote_user), roles: %w{web app}
ask :branch, proc { `git tag --sort=version:refname`.split("\n").last }

set :url, 'https://socialtext-test.cul.columbia.edu'
