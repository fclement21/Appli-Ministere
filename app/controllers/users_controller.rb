class UsersController < ApplicationController
before_filter :admin_user



  def index
    @users = User.find(:all)
  end

def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def create
 @users = User.create

   if @user.save
    flash[:succes] = "Utilisateur cree"
    redirect_to :controller =>'users', :action =>'index'
  else
    flash[:avertissement] = "Tout les champs sont obligatoires"
    redirect_to new_user_registration_path
       end
  end

  def new

   @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end


  def edit

 @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])

  end


  def update

    @user = User.find(params[:id])

   respond_to do |format|
     if @user.update_attributes(params[:user])
        format.html { redirect_to :controller => 'dashboard', :action =>'index', notice: 'Utilisateur was successfully updated.' }

        format.json { head :no_content }
         flash[:succes] = "Utilisateur modifie"
      else
        flash[:avertissement] = "Tout les champs sont obligatoires"
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy

    @user = User.find(params[:id])
    @user.destroy

    redirect_to :controller =>'users', :action =>'index'
       flash[:succes] = "User supprime"


    end

private
def admin_user
  redirect_to(root_path) unless current_user && current_user.admin?
end


def toggle_admin
  @user = User.find(params[:id])
  @user.toggle!(:admin)

end

end
