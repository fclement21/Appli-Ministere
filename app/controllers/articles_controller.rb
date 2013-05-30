class ArticlesController < ApplicationController

  def create
   @division = Division.find(params[:division_id])
   @section = Section.find(params[:section_id])
   @article = @section.articles.create(params[:article])

   if @article.save
    flash[:succes] = "Article cree"
    redirect_to :controller =>'dashboard', :action =>'index'
  else
    flash[:avertissement] = "Tout les champs sont obligatoires"
    redirect_to :controller => 'articles', :action => 'new'
       end
  end

  def index
    @articles = Article.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @division = Division.find(params[:division_id])
    @section = Section.find(params[:section_id])
    @article = @section.articles.new
  # @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @division = Division.find(params[:division_id])
    @section = Section.find(params[:section_id])
    @article = @section.articles.find(params[:id])
  #  @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json



  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @division = Division.find(params[:division_id])
    @section = Section.find(params[:section_id])
    @article = @section.articles.find(params[:id])

   respond_to do |format|
     if @article.update_attributes(params[:article])
        format.html { redirect_to :controller => 'dashboard', :action =>'index', notice: 'Article was successfully updated.' }

        format.json { head :no_content }
         flash[:succes] = "Article modifie"
      else
        flash[:avertissement] = "Tout les champs sont obligatoires"
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @division = Division.find(params[:division_id])
    @section = Section.find(params[:section_id])
    @article = @section.articles.find(params[:id])
    @article.destroy
    redirect_to :controller =>'dashboard', :action =>'index'
    if @article.destroy
       flash[:succes] = "Article supprime"
      else
        flash[:avertissement] = "Erreur"
    end

    end


  end



