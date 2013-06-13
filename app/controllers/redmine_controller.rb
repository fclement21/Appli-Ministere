class RedmineController < ApplicationController
  #before_filter :set_admin_title, :only => [:create]
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
  @admin_subject = Adminform.find(1).redmine_title
  params[:issue][:subject] = @admin_subject
  #Project_id :
  @admin_project = Adminform.find(1).redmine_project
  params[:issue][:project_id] = @admin_project
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


