$:.push File.expand_path("../lib", __FILE__)

require 'bitpack/version'

Gem::Specification.new do |s|
  s.name             = 'bitpack'
  s.version          = BitPack::VERSION 
  s.date             = '2017-08-20'
  s.summary          = "Library for packing and unpacking binary strings."
  s.authors          = ["Corey Burrows"]
  s.email            = 'corey.burrows@gmail.com'
  s.files            = %w(README CHANGELOG LICENSE Rakefile) +
                       Dir.glob("ext/**/*.{h,c,rb}") +
                       Dir.glob("lib/**/*.{rb}") +
                       Dir.glob("test/**/*.rb")
  s.extensions       = ["ext/bitpack/extconf.rb"]
  s.homepage         = 'https://github.com/burrows/bitpack'
  s.license          = 'MIT'
  s.has_rdoc         = true
  s.extra_rdoc_files = %w(README CHANGELOG LICENSE)

  s.add_development_dependency 'rdoc', '5.1.0'
end
