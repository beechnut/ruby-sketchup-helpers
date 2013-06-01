
#   Fixes the load path on Mac OS X for Sketchup & Ruby so that you can simply
#     
#     require 'gem_name'
#   
#   and just have it work.
#   
#   IMPORTANT:
#   
#   + This file assumes you use rvm to manage your rubies and gems, and
#     that you have created and are using a dedicated gemset for rbor.
#   
#   + If you do not have rvm, get it. It's easiest to install via homebrew.
#   
#   + If you do not have a gemset for r-bor, please create one:
#     `rvm gemset create rbor`
#     `rvm gemset use rbor`
#   
#   + Put this file into your Sketchup plugins folder, probably  
#     `/Library/Application Support/Google Sketchup 8/Sketchup/plugins`
#   
#   by [beechnut](https://github.com/beechnut)
#   with help from [StackOverflow](http://stackoverflow.com/questions/4982715/ruby-gems-in-google-sketchup)

# Add the path to the current Ruby, allowing you to require 
# its non-core classes, e.g. `require 'securerandom'`

$LOAD_PATH << File.expand_path("~/.rvm/rubies/ruby-#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}/lib/ruby/1.8")
$LOAD_PATH << File.expand_path("~/.rvm/rubies/ruby-#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}/lib/ruby/site_ruby/1.8")
$LOAD_PATH << File.expand_path("~/.rvm/rubies/ruby-#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}/lib/ruby/1.8/i686-darwin11.4.2")

# Add the path to the gemset.

gempath = File.expand_path(`rvm gempath dir`).strip
$LOAD_PATH << gempath

# Add each gem's top-level file from the `lib` directory of each gem.
# This allows a call to e.g. `require 'mongo_mapper'` to just grab that file.

Dir["#{gempath}/gems/*/lib/"].each do |gempath|
  $LOAD_PATH << File.expand_path(gempath)
end

require 'rubygems'