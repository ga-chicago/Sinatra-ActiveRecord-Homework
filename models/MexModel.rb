class Mex < ActiveRecord::Base

#dont always need this, but if table cant be found for some reason, you can use this code..
self.table_name = 'mexican'

end

# Represents our User table
