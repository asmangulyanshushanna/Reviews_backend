class SessionsController < ApplicationController
  
    def create
      user = User.find_by(email: params[:session][:reviews][:email].downcase)
    end
  
    def destroy
    end
end