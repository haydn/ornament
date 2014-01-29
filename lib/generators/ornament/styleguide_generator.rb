module Ornament

  class StyleguideGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def add_routes

      route "match '/styleguide' => 'styleguide#index', :as => 'styleguide'"
      route "match '/styleguide/:action' => 'styleguide'"

    end

    def copy_controller_and_views

      copy_file "app/controllers/styleguide_controller.rb"
      directory "app/views/styleguide"

    end

  end

end
