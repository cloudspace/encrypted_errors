Gem::Specification.new do |s|
  s.name = 'encrypted_errors'
  s.summary = "Encrypts Rails exceptions so your users can report them without releaving sensative info"
  s.version = '0.0.1'
  s.authors = ['Josh Lindsey']
  s.email = "josh@cloudspace.com"
  s.date = Time.now.strftime("%F")
  s.homepage = "http://cloudspace.com"

  s.files = Dir['lib/**/*']
  s.require_path = 'lib'
end

