module Ornament

  class ScaffoldGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates", __FILE__)

    argument :name, :type => :string

    def initialize(args, *options) #:nodoc:

      super

      @name = self.name

      @singular = @name.singularize
      @plural = @name.pluralize
      @plural_title = @plural.titleize
      @singular_title = @singular.titleize
      @plural_underscore = @plural.underscore
      @singular_underscore = @singular.underscore
      @plural_camel = @plural.camelize
      @singular_camel = @singular.camelize

    end

    def run_generators

      template "app/controllers/scaffold_controller.rb.tt", "app/controllers/#{@plural_underscore}_controller.rb"
      template "app/models/scaffold.rb.tt", "app/models/#{@singular_underscore}.rb"
      template "app/views/scaffold/edit.html.erb.tt", "app/views/#{@plural_underscore}/edit.html.erb"
      template "app/views/scaffold/index.html.erb.tt", "app/views/#{@plural_underscore}/index.html.erb"
      template "app/views/scaffold/new.html.erb.tt", "app/views/#{@plural_underscore}/new.html.erb"
      template "app/views/scaffold/show.html.erb.tt", "app/views/#{@plural_underscore}/show.html.erb"

    end

  end

end
