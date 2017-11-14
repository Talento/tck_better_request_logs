module TckBetterRequestLogs
  class RequestLog
    attr_accessor :payload, :runtime

    def initialize(payload, runtime)
      self.payload = payload
      self.runtime = runtime
    end

    def log
      "TCK Request Completed #{time} status=#{payload[:status]} path=[#{payload[:path]}] format=#{payload[:format]} remote_ip=#{payload[:headers].env["REMOTE_ADDR"]} (views=#{payload[:view_runtime].to_i}ms | db=#{payload[:db_runtime].to_i}ms) in #{runtime}ms pid=#{Process.pid}"
    end

    private

    def time
      Time.now.strftime("%Y-%m-%d %H:%M:%s")
    end
  end
end
