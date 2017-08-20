require 'rubygems'
require 'rake/clean'
require 'rdoc/task'

require './lib/bitpack/version'

RDOC_MAIN = "README"

Rake::RDocTask.new do |rd|
  rd.main = RDOC_MAIN
  rd.rdoc_files.include(RDOC_MAIN, "CHANGELOG", "LICENSE", "ext/**/*.c", "lib/**/*.rb")
  rd.options << "--all"
end

CLEAN.include FileList["ext/**/*.o",
                       "ext/**/*.so",
                       "ext/**/*.bundle",
                       "ext/**/Makefile",
                       "ext/**/mkmf.log",
                       "*.gem",
                       "test/*.o",
                       "test/test_driver",
                       "html"
                      ]

task :build do
  Dir.chdir('ext/bitpack') do
    sh('ruby extconf.rb && make')
  end
end

task :test => [:build] do
  sh('ruby test/bitpack_tests.rb')
end

task :gem do
  sh %{gem build bitpack.gemspec}
end

task :install => :gem do
  sh %{gem install -V --local ./bitpack-#{BitPack::VERSION}.gem}
end

task :uninstall do
  sh %{gem uninstall bitpack}
end

