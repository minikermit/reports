# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password

  # i18n
  before_filter :set_locale

  # Authlogic
  helper :all
  helper_method :current_user_session, :current_user
  filter_parameter_logging :password, :password_confirmation

   protected
     def set_locale
       session[:locale] = params[:locale] if params[:locale]
       I18n.locale = session[:locale] || I18n.default_locale

       locale_path = "#{LOCALES_DIRECTORY}#{I18n.locale}.yml"

       unless I18n.load_path.include? locale_path
         I18n.load_path << locale_path
         I18n.backend.send(:init_translations)
       end

       rescue Exception => err
        logger.error err
        flash.now[:notice] = "#{I18n.locale} translation not available"

        I18n.load_path -= [locale_path]
        I18n.locale = session[:locale] = I18n.default_locale
       end

   private
     def current_user_session
       return @current_user_session if defined?(@current_user_session)
       @current_user_session = UserSession.find
     end

     def current_user
       return @current_user if defined?(@current_user)
       @current_user = current_user_session && current_user_session.record
     end

     def require_user
       unless current_user
         store_location
         flash[:notice] = "You must be logged in to access this page"
         redirect_to new_user_session_url
         return false
       end
     end

     def require_no_user
       if current_user
         store_location
         flash[:notice] = "You must be logged out to access this page"
         redirect_to account_url
         return false
       end
     end

     def store_location
       session[:return_to] = request.request_uri
     end

     def redirect_back_or_default(default)
       redirect_to(session[:return_to] || default)
       session[:return_to] = nil
     end

    # Fetch current user in model

     def set_current_user
        User.current = current_user
     end

end


