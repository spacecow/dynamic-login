class Admin::PagesController < ApplicationController
	load_and_authorize_resource
	in_place_edit_for :page, :body
	
	def show
		@page = Page.find_by_name( params[:name] )
	end
	
#	def set_page_body
#    page = Page.find(params[:value])
#    render :text => page.body
#  end
	
	def index
		@pages = Page.all
	end

  def new
  end

  def create
    if @page.save
			flash[:notice] = t('notice.created', :object=>t(:page))
			redirect_to admin_pages_path
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
		@page = Page.find( params[:id] )
		if @page.update_attributes( params[:page] )
			flash[:notice] = t('notice.updated', :object=>t(:page))
			redirect_to admin_pages_path
		else
			render :action => :edit
		end  	
  end

  def destroy
		@page.destroy
		flash[:notice] = t('notice.updated', :object=>t(:page))
		redirect_to admin_pages_path  	
  end
end
