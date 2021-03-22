require "active_support/core_ext/integer/time"

Rails.application.configure do
 config.hosts << "8fd3ce43e6f643368c42536621c56a9a.vfs.cloud9.us-east-2.amazonaws.com"
  config.hosts << "f2942416d96a45898ef48a3ea2e7239c.vfs.cloud9.us-east-2.amazonaws.com"
  config.hosts << "5c37b026601f45d28ddc48f2b5889d68.vfs.cloud9.us-east-2.amazonaws.com"
  config.hosts << "dca991ba5e05485087e244a7ef9b5d8d.vfs.cloud9.us-east-2.amazonaws.com"
  config.hosts << "da9d6599a49e465ea07d09d65b45db21.vfs.cloud9.us-east-2.amazonaws.com"
  config.hosts << "fabc26ba0472463caa521ae4ce35bdd0.vfs.cloud9.us-east-2.amazonaws.com"
  # Settings specified here will take precedence over those in config/application.rb.
  config.hosts << "fb4b5bed814246d289220cbabc4ba41d.vfs.cloud9.us-east-2.amazonaws.com"
  # In the development environment your application's code is reloaded any time
  # it changes. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false
  config.hosts << "01e74ff49b9a46a3ad998e5a61217896.vfs.cloud9.us-east-2.amazonaws.com"
  # Do not eager load code on boot.
  config.eager_load = false
  config.hosts << "7eee17b465a34d8895f3145a33bcc752.vfs.cloud9.us-east-2.amazonaws.com"
  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  # config.action_view.annotate_rendered_view_with_filenames = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  # Uncomment if you wish to allow Action Cable access from any origin.
  # config.action_cable.disable_request_forgery_protection = true
end
