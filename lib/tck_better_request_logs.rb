require "rails"
require "tck_better_request_logs/version"
require "tck_better_request_logs/request_log"

module TckBetterRequestLogs
  class RequestLogRailtie < Rails::Railtie
    initializer "request_log_railtie.configure_rails_initialization" do
      ActiveSupport::Notifications.subscribe "process_action.action_controller" do |_name, start, finish, _id, payload|
        runtime = ((finish - start) * 1000).to_i
        Rails.logger.info TckBetterRequestLogs::RequestLog.new(payload, runtime).log
      end
    end
  end
end
