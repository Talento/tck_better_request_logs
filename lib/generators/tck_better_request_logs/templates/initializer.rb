TckBetterRequestLogs.configure do |config|
  config.log_segments = [
    Proc.new { |payload|
      "views=#{payload[:view_runtime].to_i}ms"
    },
    Proc.new { |payload|
      "db=#{payload[:db_runtime].to_i}ms"
    }
  ]
end
