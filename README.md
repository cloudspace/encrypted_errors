Encrypted Errors
================

Add this gem to your Gemfile, then `bundle install`. Then add this to your `config/application.rb`:

  config.middleware.use EncryptedException, :key => 'your secret key'

The `:key` should be generated once and then **never changed**, or you won't be able to decrypt old messages.

A good way to create a key:

  require 'digest'
  Digest::SHA256.hexdigest %x(head /dev/urandom)

