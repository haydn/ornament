module Ornament

  class ComponentsGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def copy_styelsheets_and_javascripts

      directory "app/assets/javascripts/components"
      directory "app/assets/stylesheets/components"

    end

  end

end
