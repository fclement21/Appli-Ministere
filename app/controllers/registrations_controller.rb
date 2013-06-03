class RegistrationsController < Devise::RegistrationsController
 before_filter :admin_user

 private
def admin_user
  redirect_to(root_path) unless current_user && current_user.admin?
end

end
