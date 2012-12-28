class HomeController < ApplicationController
  def index
    @author_extras = AuthorExtra.order("report_correctness_ratio DESC").limit(10)

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render :json => @author_extras }
    # end  	

    @organization_extras = OrganizationExtra.order("report_correctness_ratio DESC").limit(5)

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render :json => @organization_extras }
    # end
  end
end
