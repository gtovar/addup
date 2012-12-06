class Admins::SessionsController <  Devise::SessionsController
layout "back_end_application"

def new
  super
end

def after_sign_in_path_for(resource)
  if resource.is_a?(User) && resource.status?
    sign_out resource
    flash[:error] = "Current User is Blocked"
    root_path
  else
    unless resource.admin?
    root_path
    else
      super
      panel_path
    end
  end
end


end
