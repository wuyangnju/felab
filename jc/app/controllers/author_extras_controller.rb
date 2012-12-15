class AuthorExtrasController < ApplicationController
  # GET /author_extras
  # GET /author_extras.json
  def index
    @author_extras = AuthorExtra.order("report_correctness_count DESC").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @author_extras }
    end
  end

  # GET /author_extras/1
  # GET /author_extras/1.json
  def show
    @author_extra = AuthorExtra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @author_extra }
    end
  end

  # GET /author_extras/new
  # GET /author_extras/new.json
  def new
    @author_extra = AuthorExtra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @author_extra }
    end
  end

  # GET /author_extras/1/edit
  def edit
    @author_extra = AuthorExtra.find(params[:id])
  end

  # POST /author_extras
  # POST /author_extras.json
  def create
    @author_extra = AuthorExtra.new(params[:author_extra])

    respond_to do |format|
      if @author_extra.save
        format.html { redirect_to @author_extra, :notice => 'Author extra was successfully created.' }
        format.json { render :json => @author_extra, :status => :created, :location => @author_extra }
      else
        format.html { render :action => "new" }
        format.json { render :json => @author_extra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /author_extras/1
  # PUT /author_extras/1.json
  def update
    @author_extra = AuthorExtra.find(params[:id])

    respond_to do |format|
      if @author_extra.update_attributes(params[:author_extra])
        format.html { redirect_to @author_extra, :notice => 'Author extra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @author_extra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /author_extras/1
  # DELETE /author_extras/1.json
  def destroy
    @author_extra = AuthorExtra.find(params[:id])
    @author_extra.destroy

    respond_to do |format|
      format.html { redirect_to author_extras_url }
      format.json { head :no_content }
    end
  end
end
