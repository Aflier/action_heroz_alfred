module ActionHerozAlfred
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def create_initializer_file
        # Stimulus Controller
        template "app/javascript/controllers/help_slider_controller.js", "app/javascript/controllers/help_slider_controller.js"
        # Controller concern
        template "app/controllers/concerns/action_help_control.rb", "app/controllers/concerns/action_help_control.rb"
        # Views
        template "app/views/action_heroz_alfred/_action_heroz_button.html.erb", "app/views/action_heroz_alfred/_action_heroz_button.html.erb"
        template "app/views/action_heroz_alfred/_action_heroz_slide.html.erb", "app/views/action_heroz_alfred/_action_heroz_slide.html.erb"
        template "app/views/users/slider.turbo_stream.erb", "app/views/users/slider.turbo_stream.erb"
        # Config
        template "config/initializers/action_heroz.rb", "config/initializers/action_heroz.rb"
      end
    end
  end
end

# File.expand_path("config/initializers/initializer.rb", __FILE__)