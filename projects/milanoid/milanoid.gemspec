# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name          = "milanoid"
  spec.version       = '1.0'
  spec.authors       = ["Milanoid"]
  spec.email         = ["milanoid@example.com"]
  spec.summary       = %q{Dummy project LRTHW ex46}
  spec.description   = %q{Dummy prokect to familiar myself with Ruby ecosystem}
  spec.homepage      = "https://learnrubythehardway.org/book/ex46.html"
  spec.license       = "MIT"

  spec.files         = ['lib/milanoid.rb']
  spec.executables   = ['milanoid']
  spec.test_files    = ['tests/test_milanoid.rb']
  spec.require_path  = ["lib"]
end
