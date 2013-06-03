class RegistrationsController < Devise::RegistrationsController
 #before_filter :admin_user

 #private
#def admin_user
#  redirect_to(root_path) unless current_user.admin?
#end

  def destroy

    @user = User.find(params[:id])
    @user.destroy

    redirect_to :controller =>'users', :action =>'index'
       flash[:succes] = "User supprime"


    end
end


