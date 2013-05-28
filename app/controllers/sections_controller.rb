class SectionsController < InheritedResources::Base
actions :show, :new, :create, :edit, :update

def destroy
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action =>'index'}
  end
end

def create
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action =>'index'}
  end
end

def update
  super do |format|
    format.html { redirect_to :controller =>'dashboard', :action => 'index'}
  end
end





end
