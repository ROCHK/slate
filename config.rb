####
# GitLab Pages Basic Configuration
####
###
# Page options, layouts, aliases and proxies
###
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
###
# General configuration
###
activate :directory_indexes # Pretty urls - instead of 'example.com/about.html' -> 'example.com/about'
###
# Local: development mode
###
# Local development config # Run: 'bundle exec middleman server'
configure :development do
  # activate :livereload # Reload the browser automatically whenever files change
  set :base_url, "" # Setting empty baseurl
end
###
# Live: production mode
###
# Build-specific configuration # Run: 'bundle exec middleman build'
configure :build do
  activate :minify_css # Minify CSS on build
  activate :minify_javascript # Minify Javascript on build
  set :base_url, "/middleman" # baseurl for GitLab Pages (project name) - leave empty if you're building a user/group website
  set :build_dir, 'public' # set the build directory to GitLab Pages 'public' folder
  activate :relative_assets # Use relative URLs
end
#################################
#################################
####
# More Options
####
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }
###
# Helpers
###
# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
# Redirects
# redirect "something/index.html", to: "/something/somethingelse"
# Setting custom directories for css, js and images
# set :css_dir, 'assets/css'
# set :js_dir, 'assets/js'
# set :images_dir, 'assets/img'