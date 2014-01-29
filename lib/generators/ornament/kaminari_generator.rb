module Ornament

  class KaminariGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def copy_views

      directory "app/views/kaminari"
      copy_file "config/locales/en.kaminari.yml"

    end

  end

end
