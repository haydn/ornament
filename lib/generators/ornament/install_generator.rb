module Ornament

  class InstallGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    class_option :core,         :type => :boolean, :default => true
    class_option :kaminari,     :type => :boolean, :default => true
    class_option :settings,     :type => :boolean, :default => true
    class_option :simple_form,  :type => :boolean, :default => true

    def run_generators

      generate "ornament:core" if options.core?
      generate "ornament:kaminari" if options.kaminari?
      generate "ornament:settings" if options.settings?
      generate "ornament:simple_form" if options.simple_form?

    end

  end

end
