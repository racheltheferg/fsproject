require 'rack/contrib'
require 'rack-rewrite'

use Rack::StaticCache, :urls => ['/img', '/js', '/css'], :root => "public"
use Rack::ETag
use Rack::Rewrite do
  rewrite '/', '/index.html'
end
run Rack::Directory.new('public')
