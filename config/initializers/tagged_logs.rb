Rails.application.config.log_tags = [
  proc { |request|
    Socket.gethostname
  },
  proc { |request|
    Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address
  },
  :uuid
]
