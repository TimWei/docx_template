require 'htmltoword'
require 'erb'
require_relative 'lib/temp_obj.rb'
# require 'pry'

obj = TempObj.new

@var = 'QQQQ!'

obj.result

# result = obj.erb.result(binding)

# document = Htmltoword::Document.create(result)

# file = Htmltoword::Document.create_and_save(result,'test.docx')