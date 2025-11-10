# frozen_string_literal: true

require_relative 'lib/symfony_regenerate_secret_key/meta'

Gem::Specification.new do |spec|
  spec.name        = SymfonyRegenerateSecretKey::SLUG
  spec.version     = SymfonyRegenerateSecretKey::VERSION
  spec.license     = SymfonyRegenerateSecretKey::LICENSE
  spec.author      = SymfonyRegenerateSecretKey::AUTHOR
  spec.email       = SymfonyRegenerateSecretKey::AUTHOR_EMAIL
  spec.summary     = SymfonyRegenerateSecretKey::DESCRIPTION
  spec.homepage    = 'https://github.com/Nereare/symfony-regenerate-secret-key'

  spec.required_ruby_version = '~> 3.2'

  spec.metadata['source_code_uri']   = spec.homepage
  spec.metadata['bug_tracker_uri']   = 'https://github.com/Nereare/symfony-regenerate-secret-key/issues'
  spec.metadata['changelog_uri']     = 'https://github.com/Nereare/symfony-regenerate-secret-key/blob/master/CHANGELOG.md'
  spec.metadata['documentation_uri'] = 'https://nereare.github.io/symfony-regenerate-secret-key/'

  spec.files = Dir[
    'bin/symfony_regenerate_secret_key',
    'lib/**/*.rb',
    'sig/*',
    'spec/*.rb',
    '.ruby-version',
    'LICENSE.md',
    'Rakefile'
  ]
  spec.bindir        = 'bin'
  spec.executables   = 'symfony_regenerate_secret_key'
  spec.require_paths = %w[lib]

  spec.add_dependency 'irb', '~> 1.15', '>= 1.15.2'
  spec.add_dependency 'pastel', '~> 0.8'

  spec.add_development_dependency 'rake', '~> 13.3'
  spec.add_development_dependency 'rdoc', '~> 6.15'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'rubocop', '~> 1.81', '>= 1.81.1'
  spec.add_development_dependency 'rubocop-rake', '~> 0.7.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.7'
end
