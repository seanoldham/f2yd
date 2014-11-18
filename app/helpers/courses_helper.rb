module CoursesHelper
	def days_of_week
    [
      ['Monday', 'M'],
      ['Tuesday', 'T'],
      ['Wednesday', 'W'],
      ['Thursday', 'Tr'],
      ['Friday', 'F'],
      ['Saturday', 'Sa'],
      ['Sunday', 'Su']
    ]
	end

	def form_types
		[
			['Select a Form', ''],
			['Green Scantron', 'Green Scantron'],
			['Blue Scantron', 'Blue Scantron'],
			['ParSCORE', 'ParSCORE'],
			['Blue Book', 'Blue Book']
		]
	end
end
