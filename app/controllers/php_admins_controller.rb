class PhpAdminsController < InheritedResources::Base

before_filter :admin_user
  def update
@php_admin = PhpAdmin.find(params[:id])

   respond_to do |format|
     if @php_admin.update_attributes(params[:php_admin])
        format.html { redirect_to edit_php_admin_path(1) ,notice: 'Formulaire Php modifie' }


      else
        flash[:avertissement] = "Tout les champs sont obligatoires"
        format.html { render action: "edit" }
        format.json { render json: @php_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
     @php_admin = PhpAdmin.find(params[:id])
  end

  private
def admin_user
  redirect_to(root_path) unless current_user && current_user.admin?
end
end


