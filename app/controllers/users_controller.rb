class UsersController < ApplicationController

  def index
    @users = User.find(:all)
  end


  def create
 @users = User.create

   if @user.save
    flash[:succes] = "Utilisateur cree"
    redirect_to :controller =>'users', :action =>'index'
  else
    flash[:avertissement] = "Tout les champs sont obligatoires"
    redirect_to user_registration_path
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



  def update

    @user = users.find(params[:id])

   respond_to do |format|
     if @user.update_attributes(params[:user])
        format.html { redirect_to :controller => 'users', :action =>'index', notice: 'Utilisateur was successfully updated.' }

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

    @user = users.find(params[:id])
    @user.destroy
    redirect_to :controller =>'users', :action =>'index'
    if @user.destroy
       flash[:succes] = "User supprime"
      else
        flash[:avertissement] = "Erreur"
    end

    end







end
