# frozen_string_literal: true

class Application < Sinatra::Base
  register Sinatra::Contrib
  register Sinatra::ActiveRecordExtension

  set :database_file, 'database.yml'
  set :root, Pathname.new(File.expand_path('..', __dir__))
  set :logging, true
  set :server, :puma
  set :locales, Application.root.join('config', 'locales', 'en.yml')

  register Sinatra::I18n
  register Config
end
