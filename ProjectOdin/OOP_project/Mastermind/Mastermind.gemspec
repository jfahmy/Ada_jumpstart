lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name         = "Mastermind_Game"
  spec.version      = '1.0'
  spec.authors      = ["Jackie Fahmy"]
  spec.email        = ["jacqueline.fahmy0.o@gmail.com"]
  spec.summary      = %q{Classsic Mastermind game}
  spec.description  = %q{Player has 10 chances to guess the right sequence}
  spec.homepage     = ""
  spec.license      = ""

  spec.files        = ['lib/master_mind.rb']
  spec.executables  = ['bin/mastermind']
  spec.test_files   = ['tests/test_mastermind.rb']
  spec.require_paths= ["libs"]
end
