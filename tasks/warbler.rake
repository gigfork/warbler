# (c) Copyright 2007 Nick Sieger <nicksieger@gmail.com>
# See the file LICENSES.txt included with the distribution for
# software license details.

begin
  gem 'warbler'
rescue Gem::LoadError
  begin
    require 'warbler'
  rescue LoadError
    $LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')
    require 'warbler'
  end
end

Warbler::Task.new