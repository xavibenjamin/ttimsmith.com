namespace :assets do
  task :precompile do
    puts `bundle exec jekyll build`
  end
end

desc "Run thin server"
task :thin_serve do
    puts `bundle exec thin start -p 4000 -V`
end
