lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name         = "Game"
  spec.version      = '1.0'
  spec.authors      = ["Jackie Fahmy"]
  spec.email        = ["jacqueline.fahmy0.o@gmail.com"]
  spec.summary      = %q{Columbus food adventure game}
  spec.description  = %q{A build your own adventure game where you need to complete food quests}
  spec.homepage     = ""
  spec.license      = "MIT"

  spec.files        = ['lib/NAME.rb']
  spec.executables  = ['bin/NAME']
  spec.test_files   = ['tests/test_NAME.rb']
  spec.require_paths= ["libs"]
end
