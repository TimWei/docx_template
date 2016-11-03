class TempObj
	def initialize
		@temp = File.read 'view/temp.rhtml'
		@erb = ERB.new @temp 
	end

	def temp
		@temp
	end

	def erb
		@erb
	end

	def result
		Htmltoword::Document.create_and_save @erb.result(binding), 'test.docx'
	end
end