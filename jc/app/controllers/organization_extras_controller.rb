class OrganizationExtrasController < ApplicationController
  # GET /organization_extras
  # GET /organization_extras.json
  def index
    @organization_extras = OrganizationExtra.order("report_correctness_ratio DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @organization_extras }
    end
  end

  # GET /organization_extras/1
  # GET /organization_extras/1.json
  def show
    @organization_extra = OrganizationExtra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @organization_extra }
    end
  end

  # GET /organization_extras/new
  # GET /organization_extras/new.json
  def new
    @organization_extra = OrganizationExtra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @organization_extra }
    end
  end

  # GET /organization_extras/1/edit
  def edit
    @organization_extra = OrganizationExtra.find(params[:id])
  end

  # POST /organization_extras
  # POST /organization_extras.json
  def create
    @organization_extra = OrganizationExtra.new(params[:organization_extra])

    respond_to do |format|
      if @organization_extra.save
        format.html { redirect_to @organization_extra, :notice => 'Organization extra was successfully created.' }
        format.json { render :json => @organization_extra, :status => :created, :location => @organization_extra }
      else
        format.html { render :action => "new" }
        format.json { render :json => @organization_extra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organization_extras/1
  # PUT /organization_extras/1.json
  def update
    @organization_extra = OrganizationExtra.find(params[:id])

    respond_to do |format|
      if @organization_extra.update_attributes(params[:organization_extra])
        format.html { redirect_to @organization_extra, :notice => 'Organization extra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @organization_extra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_extras/1
  # DELETE /organization_extras/1.json
  def destroy
    @organization_extra = OrganizationExtra.find(params[:id])
    @organization_extra.destroy

    respond_to do |format|
      format.html { redirect_to organization_extras_url }
      format.json { head :no_content }
    end
  end
end
