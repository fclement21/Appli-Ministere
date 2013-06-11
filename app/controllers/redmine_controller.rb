class RedmineController < ApplicationController
# Creating an issue

def new
@issue = Issue.new


end

def create
  #stock le issue description.
  original_redmine = params[:issue] && params[:issue][:nom_redmine]
  original_admin = params[:issue] && params[:issue][:nom_admin]
  original_email = params[:issue] && params[:issue][:email]
  # le modifie
  #Titre du ticket
  params[:issue][:subject] = "Creation Instance Redmine"
  #Project_id :
  params[:issue][:project_id] = "1"
  #Description :
  params[:issue][:description] = "

   Nom de l'instance Redmine : http://#{original_redmine}.projet.appli.i2

   Nom de l'admin : #{original_admin}

   Email : #{original_email}"

 @issue = Issue.new(params[:issue])


   if @issue.save
    flash[:succes] = "Ticket cree"
    redirect_to root_path
  else
    flash[:avertissement] = "Tout les champs sont obligatoires"
    redirect_to redmine_path
       end
  end





end


