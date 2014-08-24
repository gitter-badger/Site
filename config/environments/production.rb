Rails.application.configure do 
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = true
  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = true
  config.assets.version = '1.0'
  config.log_level = :info
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
 config.action_mailer.default_url_options = { :host => 'http://app.oordi.com' }
 ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true

ActionMailer::Base.smtp_settings = {
  :address   => "smtp.mandrillapp.com",
  :authentication => 'login',
  :port      => 587,
  :user_name => "psvinodprakash@gmail.com",
  :password  => "n3yAt2WJpK-KZ0vw6T4_ew"
}
end

