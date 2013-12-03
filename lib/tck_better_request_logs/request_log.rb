module TckBetterRequestLogs

  class RequestLog

    attr_accessor :payload, :runtime

    def initialize payload, runtime
      self.payload = payload
      self.runtime = runtime
    end

    def log
      "TCK Request Completed status=#{payload[:status]} path=[#{payload[:path]}] format=#{payload[:format]} (views=#{payload[:view_runtime].to_i}ms | db=#{payload[:db_runtime].to_i}ms) in #{runtime}ms"
    end
  end

end
