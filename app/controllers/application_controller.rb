class ApplicationController < ActionController::Base
  protect_from_forgery

    # layout :layout_by_resource
        # 
        # def layout_by_resource
        #   if    devise_controller? && resource_name == :store && action_name != 'edit'        
        #         "home"
        #   elsif action_name == 'edit' 
        #         "application"      
        #   else 
        #         "application"
        #   end
        #   
        # end
    
end
