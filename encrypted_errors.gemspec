Gem::Specification.new do |s|
  s.name = 'encrypted_errors'
  s.summary = "Encrypts Rails exception output"
  s.description = "Encrypts Rails exception output similarly to how YouTube does it."
  s.version = '0.0.1'
  s.authors = ['Josh Lindsey']
  s.email = "josh@cloudspace.com"
  s.date = Time.now.strftime("%F")
  s.homepage = "http://cloudspace.com"

  s.add_dependency "encryptor", ['~> 1.1.1']

  s.files = Dir['lib/**/*']
  s.require_path = 'lib'
end

