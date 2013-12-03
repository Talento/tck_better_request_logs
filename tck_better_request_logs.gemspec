# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tck_better_request_logs/version'

Gem::Specification.new do |gem|
  gem.name          = "tck_better_request_logs"
  gem.version       = TckBetterRequestLogs::VERSION
  gem.authors       = ["Daniel Del Moral"]
  gem.email         = ["dadelmo@gmail.com"]
  gem.description   = "better logs for requests"
  gem.summary       = "better logs for requests"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
