# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "digest-siphash"
  spec.version       = "0.0.1"
  spec.authors       = "ksss"
  spec.email         = "co000ri@gmail.com"
  spec.summary       = %q{Digest::SipHash is a class of message digest use algorithm SipHash.}
  spec.description   = %q{Digest::SipHash is a class of message digest use algorithm SipHash.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/digest/siphash/extconf.rb"]

  spec.add_runtime_dependency "digest-stringbuffer", ["~> 0.0.2"]
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ['~> 2.11']
  spec.add_development_dependency "rake-compiler", ["~> 0.8.3"]
end
