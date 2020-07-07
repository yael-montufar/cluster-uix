class PagesController < ApplicationController
  def home
    @homepage = true
    @pages = Page.all
  end

  def show
    @page = Page.find_by!(slug: params[:slug])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to root_path
    else
      render :new
    end
  end

  def kitchen_sink
  end

  private

  def page_params
    params.require(:page).permit(:title)
  end
end
