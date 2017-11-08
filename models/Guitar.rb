class Guitar < ActiveRecord::Base

	# dont always have to do this part
	# but if activer record cant find your table this will help
	self.table_name = 'guitars'

end
