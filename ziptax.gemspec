# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zip_tax/version'

Gem::Specification.new do |spec|
  spec.name          = "ziptax"
  spec.version       = ZipTax::VERSION
  spec.authors       = ["Bryce McDonnell", "Garrett Boone - after fork"]
  spec.email         = ["bryce@bridgetownint.com"]
  spec.summary       = %q{Consumes Zip-Tax.com API and returns tax rates}
  spec.description   = %q{Fetch calculated sales tax rate at the zip code area of specificity by consuming the Zip-Tax.com API}
  spec.homepage      = "https://github.com/brycemcd/ziptax"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency 'rack'

end
