module ActionHerozAlfred
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def create_initializer_file
        template "javascript/controllers/help_slider_controller.js", "app/javascript/controllers/help_slider_controller.js"
        template "app/views/_action_heroz_button.html.erb", "app/views/action_heroz_alfred/_action_heroz_button.html.erb"
        template "app/views/_action_heroz_slide.html.erb", "app/views/action_heroz_alfred/_action_heroz_slide.html.erb"
      end
    end
  end
end

# File.expand_path("config/initializers/initializer.rb", __FILE__)