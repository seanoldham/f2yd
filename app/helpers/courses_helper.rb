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

	def uh_form_types
		[
			['Select a Form', ''],
			['Green Mini Essay Book', 'Green Mini Essay Book'],
			['Red Form', 'Red Form'],
			['Blue Scantron', 'Blue Scantron'],
      ['Purple Scantron', 'Purple Scantron'],
			['Blue Book', 'Blue Book']
		]
	end

  def uhcl_form_types
    [
      ['Select a Form', ''],
      ['Green Mini Essay Book', 'Green Mini Essay Book'],
      ['Green Scantron', 'Green Scantron'],
      ['Blue Scantron', 'Blue Scantron'],
      ['Blue Book', 'Blue Book']
    ]
  end

  def hcc_form_types
    [
      ['Select a Form', ''],
      ['Green Scantron', 'Green Scantron'],
      ['Blue Scantron', 'Blue Scantron'],
      ['ParSCORE', 'ParSCORE'],
      ['Blue Book', 'Blue Book']
    ]
  end

  def lsc_form_types
    [
      ['Select a Form', ''],
      ['White Scantron - 50 Answers', 'White Scantron - 50 Answers'],
      ['White Scantron - 100 Answers', 'White Scantron - 100 Answers'],
      ['White Scantron - 200 Answers', 'White Scantron - 200 Answers'],
      ['Blue Book', 'Blue Book']
    ]
  end

  def sjc_form_types
    [
      ['Select a Form', ''],
      ['Green', 'Green Scantron'],
      ['Green Mini Essay Book', 'Green Mini Essay Book'],
      ['ParSCORE Half Sheet', 'ParSCORE Half Sheet'],
      ['ParSCORE Full Sheet', 'ParSCORE Full Sheet'],
      ['Blue Book', 'Blue Book']
    ]
  end
end
