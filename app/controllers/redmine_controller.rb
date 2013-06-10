class RedmineController < ApplicationController
# Creating an issue

def new
@issue = Issue.new

 #@issue.description = "Ajout d'un texte controlleur"+ 'description'
end
  #@issue = Issue.new(
  #          :subject => 'Php dano creation',
  #          :project_id => '1'
#
  #                      )
#if @issue.save
#  redirect_to root_path
#else
 # puts @issue.errors.full_messages
#end
#end

def create
  #stock le issue description.
  original_redmine = params[:issue] && params[:issue][:nom_redmine]
  original_admin = params[:issue] && params[:issue][:nom_admin]

  # le modifie
  #Titre du ticket
  params[:issue][:subject] = "Creation Instance Redmine"
  #Project_id :
  params[:issue][:project_id] = "1"
  #Description :
  params[:issue][:description] = "

   Nom de l'instance Redmine : http://#{original_redmine}.projet.appli.i2

   Nom de l'admin : #{original_admin}"

 @issue = Issue.new(params[:issue])


  #@issue.description = "Texte controlleur" + params[:issue][:description]
 #@issue.description = "Ajout d'un texte controlleur"+ 'description'
   if @issue.save
    flash[:succes] = "Ticket cree"
    redirect_to root_path
  else
    flash[:avertissement] = "Tout les champs sont obligatoires"
    redirect_to contact_path
       end
  end





end


