class SectionsController < InheritedResources::Base
actions :show, :new, :create, :edit, :update

def destroy
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action =>'index'}
  end
   if @section.destroy

      else
        flash[:avertissement] = "Erreur lors de la suppression"
    end
end

def create
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action =>'index'}
  end
   if @section.save

      else
        flash[:avertissement] = "Erreur lors de la creation"
        redirect_to new_section_path
    end
end

def update
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action => 'index'}
if @section.save

else
    flash[:avertissement] = "Titre obligatoire"
  end
  end



end





end
