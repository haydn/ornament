module Ornament

  class SettingsGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def create_settings_file

      copy_file "app/assets/stylesheets/ornament/_defaults.css.scss", "app/assets/stylesheets/_settings.css.scss"

    end

  end

end
