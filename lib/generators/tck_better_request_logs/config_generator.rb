class TckBetterRequestLogs::ConfigGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def generate_initializer
    template "initializer.rb",
      File.join(destination_root, "config/initializers/tck_better_request_logs.rb")
  end

end
