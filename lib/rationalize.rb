module Rationalize
  require 'engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
  require 'redis'
end
