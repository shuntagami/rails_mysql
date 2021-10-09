class ApplicationController < ActionController::Base
  include AppErrorResponder
  include AppHealthCheck

  protect_from_forgery with: :exception
end
