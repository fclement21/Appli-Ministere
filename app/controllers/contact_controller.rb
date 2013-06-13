class ContactController < ApplicationController
# Creating an issue

def new
@issue = Issue.new

 end

def create
  #stock le issue description.
  original_environnement = params[:issue] && params[:issue][:nom_environnement]
  original_bdd = params[:issue] && params[:issue][:type_bdd]
  original_email = params[:issue] && params[:issue][:email]
  # le modifie

  #Titre du ticket
  @admin_subject = Adminform.find(1).php_title
  params[:issue][:subject] = @admin_subject
  #Project_id :
  @admin_project = Adminform.find(1).php_project
  params[:issue][:project_id] = @admin_project
  #Description :
  params[:issue][:description] = "

   Nom d'environnement : http://#{original_environnement}.appli.i2

   Type de Bdd : #{original_bdd}

   Email : #{original_email} "

 @issue = Issue.new(params[:issue])



   if @issue.save
    flash[:succes] = "Ticket cree"
    redirect_to root_path
  else
    flash[:avertissement] = "Tout les champs sont obligatoires"
    redirect_to contact_path
       end
  end





end
