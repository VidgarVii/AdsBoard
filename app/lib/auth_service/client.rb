# frozen_string_literal: true

module AuthService
  class Client
    extend Dry::Initializer[undefined: false]
    include Api

    option :queue, default: proc { create_queue }

    private

    def create_queue
      channel = RabbitMQ.channel
      channel.queue('auth', durable: true)
    end

    def publish(payload, opts = {})
      @queue.publish(
        payload,
        opts.merge(persistent: true, app_id: 'ads')
      )
    end
  end
end
