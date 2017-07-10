class HomeController < ApplicationController

  before_action :only => '/admin' do
    redirect_to '/' unless is_admin?
  end

	def new
	end
end
