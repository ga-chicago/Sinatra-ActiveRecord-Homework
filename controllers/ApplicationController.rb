class ApplicationController < Sinatra::base
	require 'bundler'
	Bundler.require

	not_found do
		erb :not_found
	end

end
