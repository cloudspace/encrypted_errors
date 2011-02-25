require 'encryptor'

class EncryptedException
  def initialize(app, options = {})
    @app, @options = app, options
    raise "Must supply a :key option to EncryptedException" if @options[:key].nil? or @options[:key].empty?
    @options[:algorithm] ||= 'aes-256-cbc'

    Encryptor.default_options.merge! :algorithm => @options[:algorithm],
                                     :key => @options[:key]
  end

  def call(env)
    begin
      @app.call(env)
    rescue Exception => e
      encrypted_description = e.description.encrypt
      encrypted_backtrace = e.backtrace.encrypt

      new_exception = e.class.new encrypted_description
      new_exception.set_backtrace = encrypted_backtrace

      raise new_exception
    end
  end
end

