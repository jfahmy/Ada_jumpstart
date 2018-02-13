lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name         = "Sinatra_Test"
  spec.version      = '1.0'
  spec.authors      = ["Jackie Fahmy"]
  spec.email        = ["jacqueline.fahmy0.o@gmail.com"]
  spec.summary      = %q{Just fooling around}
  spec.description  = %q{Learn Ruby the Hardway Test}
  spec.homepage     = ""
  spec.license      = ""

  spec.files        = ['lib']
  spec.executables  = ['bin']
  spec.test_files   = ['tests']
  spec.require_paths= ["libs"]
end
