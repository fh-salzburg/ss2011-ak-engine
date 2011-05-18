module Rails
  class AkGenerator < Rails::Generators::Base
		source_root File.expand_path("../templates", __FILE__)
		
		def create_stylesheets
			template 'ak-stylesheet.css', 'public/stylesheets/ak-stylesheet.css'
			puts "Stylesheet created!"
		end
  end
end