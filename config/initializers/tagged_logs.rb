Rails.application.config.log_tags = [
  proc { |request|
    Socket.gethostname
  },
  :uuid
]
