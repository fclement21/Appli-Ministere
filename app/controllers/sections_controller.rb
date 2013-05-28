class SectionsController < InheritedResources::Base
actions :show, :new, :create, :edit, :update

def destroy
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action =>'index'}
  end
   if @section.destroy

      else
        flash[:avertissement] = "Erreur"
    end
end

def create
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action =>'index'}
  end
   if @section.save

      else
        flash[:avertissement] = "Erreur"
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
