# encoding: UTF-8
lock "3.9.1"

set :department, 'cdrs'
set :application, 'socialtext'
set :remote_user, "#{fetch(:department)}serv"
set :repo_url, "git@github.com:cul/#{fetch(:department)}-#{fetch(:application)}.git"
set :deploy_to, "/opt/www/#{fetch(:department)}/#{fetch(:application)}_#{fetch(:stage)}"
set :ssh_options, { :forward_agent => true }

set :keep_releases, 2

######################
# WordPress settings #
######################

# Set up important directories
set :wp_docroot, "#{fetch(:deploy_to)}/html"
set :wp_content_path, "#{fetch(:deploy_to)}/wp-content"
set :multisite, false
set :title, 'CDRS Social Text'

# List custom plugins and themes to pull in from repo

set :wp_custom_themes, {
  'cdrs-ST' => 'wp-content/themes/cdrs-ST',
  'twentysixteen-frozen' => 'wp-content/themes/twentysixteen-frozen'
}
