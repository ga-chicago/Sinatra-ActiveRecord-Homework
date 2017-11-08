class Poke < ActiveRecord::Base
	##don't always have to do this part
	## but if active record canf ind table this help
	self.table_name = 'pokemon'
end