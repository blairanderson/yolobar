# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yolobar/version'

Gem::Specification.new do |gem|
  gem.name          = "yolobar"
  gem.version       = Yolobar::Rails::VERSION
  gem.authors       = ["Blair Anderson"]
  gem.email         = ["blair81@gmail.com"]
  gem.description   = %q{hellobar styled notifications for Rails}
  gem.summary       = %q{hellobar styled notifications for Rails}
  gem.homepage      = "https://github.com/blairanderson/yolobar"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
