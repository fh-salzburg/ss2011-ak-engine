module Ss2011akengine
  module Generators
    class InstallLayoutGenerator < Rails::Generators::Base
      class_option :color, :type => :string, :default => '#bada55'

      def copy_stylesheet
        create_file 'public/stylesheets/ss2011akengine-screen.css'
        append_file 'public/stylesheets/ss2011akengine-screen.css', "body {background-color: #{options.color};}"
      end
    end
  end
end
