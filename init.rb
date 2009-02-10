# Add any initiallizable activities
require 'bookmark_url_to'
require 'ftools'
ActionController::Base.helper BookmarkUrlTo

begin
  require File.dirname(__FILE__) + '/install_assets'
rescue
  raise $! unless RAILS_ENV == 'production'
end
