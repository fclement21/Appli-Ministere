class ContactController < ApplicationController


# Creating an issue
def new
@issue = Issue.new
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
 @issue = Issue.create(params[:issue])

   if @issue.save
    flash[:succes] = "Ticket cree"
    redirect_to root_path
  else
    flash[:avertissement] = "Tout les champs sont obligatoires"
    redirect_to contact_path
       end
  end





end
