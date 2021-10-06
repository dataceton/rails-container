lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_container/version"

Gem::Specification.new do |spec|
  spec.name = 'rails-container'
  spec.version = RailsContainer::VERSION.dup
  spec.authors = ['Daniil Davydov']
  spec.license = 'MIT'

  spec.summary = 'Rails container MVP'
  spec.files = Dir['rails-container.gemspec', 'lib/**/*']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'railties', '>= 3.0', '< 7.2'
  spec.add_runtime_dependency 'dry-container', '~> 0.9.0'
end

