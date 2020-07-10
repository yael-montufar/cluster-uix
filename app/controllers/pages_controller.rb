class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def home
    @homepage = true
    @pages = Page.all
  end

  def show
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

  def edit
  end

  def update
    if @page.update(page_params)
      redirect_to page_path(@page)
    else
      render :edit
    end
  end

  def destroy
    @page.destroy
    redirect_to root_path
  end

  def kitchen_sink
  end

  def test
    @testpage = true
  end

  private

  def set_page
    @page = Page.find_by!(slug: params[:slug])
  end

  def page_params
    params.require(:page).permit(:title)
  end
end
