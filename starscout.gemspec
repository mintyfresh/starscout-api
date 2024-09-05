# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name    = 'starscout'
  spec.version = '0.1.0'
  spec.authors = ['Minty Fresh']
  spec.email   = ['7896757+mintyfresh@users.noreply.github.com']
  spec.summary = 'A Twirp API wrapper for Starscout.'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['lib/**/*.rb']
  end

  spec.add_dependency 'rack', '~> 3'
  spec.add_dependency 'twirp', '~> 1.10'
end
