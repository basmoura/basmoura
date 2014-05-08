# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'basmoura/version'

Gem::Specification.new do |spec|
  spec.name          = "basmoura"
  spec.version       = Basmoura::VERSION
  spec.authors       = ["Breno Moura"]
  spec.email         = ["basmoura@gmail.com"]
  spec.summary       = %q{Provide informations about me}
  spec.description   = %q{I believe in one simple thing: if you are a developer, do all you can as a developer}
  spec.homepage      = "https://github.com/basmoura"
  spec.license       = "MIT"

  spec.files         = Dir["LICENSE.txt", "README.md", "lib/**/*"]
  spec.executables   = 'basmoura'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rake', '>= 10.0.0'
  spec.add_dependency 'colorize', '~> 0.7.0'
  spec.add_dependency 'prawn', '~> 1.0.0'

  spec.add_development_dependency "bundler", "~> 1.5"

  spec.post_install_message = "This is a simple gem to show my professional informations."\
    " Type basmoura."
end
