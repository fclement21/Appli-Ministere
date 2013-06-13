class AdminformsController < InheritedResources::Base
 before_filter :admin_user

def update

    @adminform = Adminform.find(params[:id])

   respond_to do |format|
     if @adminform.update_attributes(params[:adminform])
        format.html { redirect_to edit_adminform_path(1), notice: 'Formulaire change.' }


      else
        flash[:avertissement] = "Tout les champs sont obligatoires"
        format.html { render action: "edit" }
        format.json { render json: @adminform.errors, status: :unprocessable_entity }
      end
    end
  end

 private
def admin_user
  redirect_to(root_path) unless current_user && current_user.admin?
end

end
