class DivisionsController < InheritedResources::Base
  def destroy
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action =>'index'}
  end
   if @division.destroy

      else
        flash[:avertissement] = "Erreur lors de la suppression"
    end
end

#def create

 # if @division.save
#redirect_to :controller =>'dashboard', :action =>'index'
 #     else
  #      flash[:avertissement] = "Veuillez remplir le champs titre."
  #     redirect_to new_division_path
  # end
#end

def update
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action => 'index'}
if @division.save

else
    flash[:avertissement] = "Titre obligatoire"
  end
  end
end






end
