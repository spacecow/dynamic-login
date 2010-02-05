class Admin::PagesController < AdminController
	load_and_authorize_resource
	
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
