# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :prepare_for_mobile  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  private  
    def mobile_device?  
      request.user_agent =~ /Mobile|webOS/  
    end  
    helper_method :mobile_device?
    
    def prepare_for_mobile  
      session[:mobile_param] = params[:mobile] if params[:mobile]
      request.format = :mobile if mobile_device?
    end
end
