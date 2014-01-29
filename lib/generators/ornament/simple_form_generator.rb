module Ornament

  class SimpleFormGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def copy_views

      copy_file "config/initializers/simple_form.rb"
      copy_file "config/locales/en.simple_form.yml"

    end

  end

end
