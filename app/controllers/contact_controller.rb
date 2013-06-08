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
  original_description = params[:issue] && params[:issue][:description]
  # le modifie
  params[:issue][:description] = "The user write #{original_description}"
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
