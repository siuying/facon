$:.push File.expand_path('../lib', __FILE__)
require 'facon/version'

Gem::Specification.new do |s|
  s.name        = 'motion-facon'
  s.version     = Facon::VERSION
  s.authors     = ['chuyeow', 'Francis Chong']
  s.email       = ['chuyeow@gmail.com', 'francis@ignition.hk']
  s.homepage    = 'https://github.com/siuying/facon'
  s.summary     = %q{Tiny mocking library.}
  s.description = %q{A mocking library in the spirit of the Bacon spec library. Small, compact, and works with Bacon.}
  s.name          = "motion-facon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
