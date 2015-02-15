require "dbmapper/version"

module Dbmapper
	class DatabaseMapper

		def self.hello_world
			puts "Hello World"
		end 
		def initlialize
			Rails.application.eager_load!
		end

		def all_models
			#open file
			text_file = File.open("mapped_databse.txt", 'w')
			ActiveRecord::Base.descendants.each do |model|
				text_file.write(model)
			end
			text_file.close
		end 

		def all_columns
			#open file
			text_file = File.open("mapped_databse.txt", 'w')
			ActiveRecord::Base.descendants.each do |model|
				text_file.write(model);
				model.column_names.each do |column|
					text_file.write(column)
				end
			end
		end

		def all_models_with_association
			#open file
			text_file = File.open("mapped_databse.txt", 'w')
			association_string = "-->"
			ActiveRecord::Base.descendants.each do |model|
				text_file.write(model)
				model.relfect_on_all_associations.map(&:name).each do |assocations|
					association_string = association_string + " #{assocations},"
				end 
				text_file.write(association_string)
				association_string = "-->"
			end
			text_file.close
		end 
	end
end
