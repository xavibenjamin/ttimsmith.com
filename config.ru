require 'rack/contrib/try_static'
require 'rack/contrib/not_found'
require 'rack/rewrite'

# Enable Compression
use Rack::Deflater

# Redirects for feeds and http
use Rack::Rewrite do
  r301 %r{.*}, 'https://ttimsmith.com$&', :scheme => 'http'

  r301 '/feed.xml', 'https://feedpress.me/theboldreport'
end

# Serving Static Files
use Rack::TryStatic,
  :root => "_site",
  :urls => %w[/],
  :try => ['.html', 'index.html', '/index.html'],
  header_rules: [
    [['html'],  { 'Content-Type'  => 'text/html; charset=utf-8', 'Cache-Control' => 'public, max-age=31536000', 'Vary' => 'Accept-Encoding' }],
    [['css'],   { 'Content-Type'  => 'text/css' }],
    [['js'],    { 'Content-Type'  => 'text/javascript' }],
    [['png'],   { 'Content-Type'  => 'image/png' }],
    ['/assets', { 'Cache-Control' => 'public, max-age=31536000', 'Vary' => 'Accept-Encoding' }],
    ['/uploads/me_web.jpg', { 'Cache-Control' => 'public, max-age=31536000' }],
    ]

# Serving pretty 404 page
run Rack::NotFound.new('_site/404/index.html')
