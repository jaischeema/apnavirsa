class SessionsController < ApplicationController
   def new
      if current_user
         redirect_to root_or_default_path, :notice => "Already Logged in!"
      else
         render :layout => "login"
      end
   end

   def destroy
   end
end