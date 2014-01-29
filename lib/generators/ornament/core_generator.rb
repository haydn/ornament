module Ornament

  class CoreGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def copy_stylesheets_and_javascripts

      copy_file "app/assets/javascripts/application.js"
      directory "app/assets/javascripts/ornament"

      copy_file "app/assets/stylesheets/_fonts.css.scss"
      directory "app/assets/stylesheets/ornament"

      copy_file "app/assets/stylesheets/application.css.scss"
      remove_file "app/assets/stylesheets/application.css"

      directory "vendor/assets"

    end

    def run_generators

      generate "ornament:components"
      generate "ornament:layouts"
      generate "ornament:styleguide"

    end

  end

end
