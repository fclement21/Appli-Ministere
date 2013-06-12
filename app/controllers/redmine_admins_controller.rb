class RedmineAdminsController < InheritedResources::Base
before_filter :admin_user
  def update
@redmine_admin = RedmineAdmin.find(params[:id])

   respond_to do |format|
     if @redmine_admin.update_attributes(params[:redmine_admin])
        format.html { redirect_to edit_redmine_admin_path(1) ,notice: 'Formulaire Redmine modifie' }


      else
        flash[:avertissement] = "Tout les champs sont obligatoires"
        format.html { render action: "edit" }
        format.json { render json: @redmine_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
     @redmine_admin = RedmineAdmin.find(params[:id])
  end

  private
def admin_user
  redirect_to(root_path) unless current_user && current_user.admin?
end
end
