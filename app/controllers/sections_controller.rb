class SectionsController < InheritedResources::Base


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
   @division= Division.find(params[:division_id])
   @section = @division.sections.create(params[:section])

   if @section.save
redirect_to :controller =>'dashboard', :action =>'index'
      else
        flash[:avertissement] = "Veuillez remplir le champs titre."
        redirect_to new_section_path
    end
end

def update

    @division = Division.find(params[:division_id])
    @section = @division.sections.find(params[:id])


  respond_to do |format|
     if @section.update_attributes(params[:section])
        format.html { redirect_to :controller => 'dashboard', :action =>'index', notice: 'Article was successfully updated.' }

        format.json { head :no_content }
         flash[:succes] = "Section modifie"
      else
        flash[:avertissement] = "Tout les champs sont obligatoires"
        format.html { render action: "edit" }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
end

def new
     @division = Division.find(params[:division_id])
     @section = @division.sections.new
   respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section}
    end
    if @section.save
redirect_to :controller =>'dashboard', :action =>'index'
else
  flash[:avertissement] = "Veuillez remplir le champs titre."

end
 end

 def edit
    @division = Division.find(params[:division_id])
    @section = @division.sections.find(params[:id])

  end

  def show

 @division = Division.find(params[:division_id])
 @section = Section.find(params[:id])

  end

end
