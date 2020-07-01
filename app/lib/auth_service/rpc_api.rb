module AuthService
  module RpcApi
    def auth(token)
      payload = { uuid: token }.to_json

      publish(
        payload,
        type: 'authentication',
        reply_to: @reply_queue.name
      )

      channel = RabbitMq.channel
      queue = channel.queue('user_ids', durable: true)

      queue.subscribe do |delivery_info, properties, payload|
        @result = JSON(payload).dig('user_id')
      end

      @result
    end
  end
end
