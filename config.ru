require 'rack/contrib/try_static'
require 'rack/contrib/not_found'

use Rack::TryStatic,
  :root => "_site",
  :urls => %w[/],
  :try => ['.html', 'index.html', '/index.html'],
  header_rules: [
    [['html'],  { 'Content-Type'  => 'text/html; charset=utf-8', 'Cache-Control' => 'public, max-age=31536000' }],
    [['css'],   { 'Content-Type'  => 'text/css' }],
    [['js'],    { 'Content-Type'  => 'text/javascript', 'Cache-Control' => 'public, max-age=31536000'}],
    [['png'],   { 'Content-Type'  => 'image/png' }],
    ['/assets', { 'Cache-Control' => 'public, max-age=31536000' }],
  ]

run Rack::NotFound.new('_site/404/index.html')
