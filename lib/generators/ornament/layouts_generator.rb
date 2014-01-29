module Ornament

  class LayoutsGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    def copy_layout_files

      copy_file "app/views/layouts/global.html.erb"
      copy_file "app/views/layouts/application.html.erb"

    end

  end

end
