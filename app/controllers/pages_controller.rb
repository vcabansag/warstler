class PagesController < ApplicationController

  def index
    @pages = Page.all
    @page_name = 'home'
    @page_image = 'sharon-todd-sunset-logo.jpg'
    @title = 'Sharon & Todd'

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages }
    end
  end

  def show
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page }
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(params[:page])

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render json: @page, status: :created, location: @page }
      else
        format.html { render action: "new" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url }
      format.json { head :no_content }
    end
  end

  def reception
    @page_name = 'reception'
    @page_image = 'sharon-todd-cheeky.jpg'
    @title = "Sharon & Todd's Reception"
  end

  def ourstory 
    @page_name = 'ourstory'
    @page_image = 'sharon-todd-beach.jpg'
    @title = "Sharon & Todd's Story"
  end

  def registry
    @page_name = 'registry'
    @page_image = 'sharon-todd-umbrella.jpg'
    @title = "Sharon & Todd's Registry"
  end

end
