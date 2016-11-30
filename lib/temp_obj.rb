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

	def result main_binding = nil
		main_binding ? 
		Htmltoword::Document.create_and_save(@erb.result(main_binding), 'test.docx')
		:
		Htmltoword::Document.create_and_save(@erb.result(binding), 'test.docx')
	end
end