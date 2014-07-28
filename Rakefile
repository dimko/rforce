# -*- ruby -*-

$:.unshift './lib'

require 'hoe'
require 'hoe/gemspec2'

Hoe.plugin :gemspec2

Hoe.spec 'rforce' do
  is_jruby = (RUBY_PLATFORM == 'java')
  is_ruby18 = (RUBY_VERSION =~ /^1.8/)

  developer('Ian Dees', 'undees@gmail.com')
  license('MIT')

  self.extra_deps << ['builder', '~> 3.0']
  self.extra_deps << ['oauth', '~> 0.4']

  self.extra_dev_deps << ['rspec', '~> 2.8']
  self.extra_dev_deps << ['hoe-gemspec2', '~> 1.1']
  self.extra_dev_deps << ['nokogiri', '~> 1.5'] unless is_ruby18
  self.extra_dev_deps << ['xmlparser', '~> 0.7'] unless is_jruby

  self.rdoc_locations = ['undees@rforce.rubyforge.org:/var/www/gforge-projects/rforce']
  self.remote_rdoc_dir = ''

  self.rspec_options = ['-rubygems', '--options', 'spec/spec.opts']
end

task :test => :spec

Dir['tasks/**/*.rake'].each { |rake| load rake }

# vim: syntax=Ruby
