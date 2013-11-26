lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roman_numeral_gem/version'

Gem::Specification.new do |gem|
    gem.name            = "roman_numeral_gem"
    gem.version         = RomanNumeralGem::VERSION
    gem.authors         = ["abwinkler999"]
    gem.email           = ["abwinkler999@gmail.com"]
    gem.description     = %q{Converts Roman numerals into integers}
    gem.summary         = %q{Adds .r_to_i method to String, to convert a Roman numeral string to integer}
    gem.homepage        = "http://www.github.com/abwinkler999/roman_numeral_gem"

    gem.files           = `git ls-files`.split($/)
    gem.executables     = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
    gem.test_files      = gem.files.grep(%r{^(test|spec|features)/})
    gem.require_paths   = ["lib"]

    gem.add_development_dependency "rake"
    gem.add_development_dependency "rspec"
end