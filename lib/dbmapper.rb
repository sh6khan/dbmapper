require "dbmapper/version"

module Dbmapper
	class DatabaseMapper

		def initlialize
			Rails.application.eager_load!
		end

		def all_models
			#open file
			text_file = File.open("mapped_databse.txt", 'w')
			ActiveRecord::Base.descendants.each do |model|
				text_file.write(model)
				text_file.write("\n")
			end
			puts "All your models have been written to mapped_databse.txt"
			text_file.close
		end 

		def all_columns
			#open file
			text_file = File.open("mapped_databse.txt", 'w')
			ActiveRecord::Base.descendants.each do |model|
				text_file.write(model)
				text_file.write("\n\n")
				model.column_names.each do |column|
					text_file.write(column)
					text_file.write("\n")
				end
			end
			puts "All your columns have been written to mapped_databse.txt"
			text_file.close
		end

		def all_models_with_association
			#open file
			text_file = File.open("mapped_databse.txt", 'w')
			association_string = "-->"
			ActiveRecord::Base.descendants.each do |model|
				text_file.write(model)
				text_file.write("\n")
				model.relfect_on_all_associations.map(&:name).each do |assocations|
					association_string = association_string + " #{assocations},"
				end 
				text_file.write(association_string)
				text_file.write("\n\n")
				association_string = "-->"
			end
			puts "all models with their assocations have been written to mapped_databse.txt"
			text_file.close
		end 
	end
end
