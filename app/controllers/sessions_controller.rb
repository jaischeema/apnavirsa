class SessionsController < ApplicationController
   def new
      if current_user
         redirect_to root_or_default_path, :notice => t('flash.already_logged_in')
      else
         render :new
      end
   end

   def create
      user = login(params[:username],params[:password],params[:remember_me])
      if user
         redirect_back_or_to root_path, :notice => t('flash.logged_in')
      else
         redirect_to login_path, :alert => t('flash.login_failure')
      end
   end

   def destroy
   end
end