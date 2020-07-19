Application.configure do |app|
  logger = Ougai::Logger.new(
    app.root.join(Settings.logger.path),
    level: Settings.logger.level
  )

  logger.before_log = lambda do |data|
    data[:service] = { name: Settings.app.name }
    data[:request] ||= Thread.current[:request_id]
  end

  app.set :logger, logger
end

ActiveSupport::TaggedLogging.new(AdsBoard.logger)
