require File.join(File.dirname(__FILE__), 'facon/version')

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  app.development do
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/core_ext/object.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/baconize.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/proxy.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/expectation.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/error_generator.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/mock.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/mockable.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/base.rb')
    app.files.unshift File.join(File.dirname(__FILE__), 'facon/core_ext/forwardable.rb')
  end
end