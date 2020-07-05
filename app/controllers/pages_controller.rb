class PagesController < ApplicationController
  def home
    @homepage = true
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def kitchen_sink
  end
end
