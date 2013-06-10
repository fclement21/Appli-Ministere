class ContactController < ApplicationController
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
  original_environnement = params[:issue] && params[:issue][:nom_environnement]
  original_bdd = params[:issue] && params[:issue][:type_bdd]
  original_email = params[:issue] && params[:issue][:email]
  # le modifie
  #Titre du ticket
  params[:issue][:subject] = "Php Creation test"
  #Project_id :
  params[:issue][:project_id] = "1"
  #Description :
  params[:issue][:description] = "

   Nom d'environnement : http://#{original_environnement}.appli.i2

   Type de Bdd : #{original_bdd}

   Email : #{original_email} "

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
