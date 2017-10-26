lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tck_better_request_logs/version"

Gem::Specification.new do |spec|
  spec.name          = "tck_better_request_logs"
  spec.version       = TckBetterRequestLogs::VERSION
  spec.authors       = ["Daniel Del Moral"]
  spec.email         = ["dadelmo@gmail.com"]

  spec.summary       = "better logs for requests"
  spec.description   = "better logs for requests"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties"

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.51"
end
