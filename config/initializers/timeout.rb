Rack::Timeout.timeout = ENV.fetch('REQUEST_TIMEOUT') { 50 }.to_i
