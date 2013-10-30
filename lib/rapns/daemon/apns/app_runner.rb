module Rapns
  module Daemon
    module Apns
      class AppRunner < Rapns::Daemon::AppRunner

        protected

        def after_start
          unless Rapns.config.push
            poll = Rapns.config.feedback_poll
            
            begin
              @feedback_receiver = FeedbackReceiver.new(app, poll)
              @feedback_receiver.start
            rescue Exception => e
                Rails.logger.info("[RAPNS] Cannot start Feedback service for app #{app.name}")
                Rails.logger.warn(e.message)
            end
          end
        end

        def after_stop
          @feedback_receiver.stop if @feedback_receiver
        end

        def new_delivery_handler
          DeliveryHandler.new(app)
        end
      end
    end
  end
end
